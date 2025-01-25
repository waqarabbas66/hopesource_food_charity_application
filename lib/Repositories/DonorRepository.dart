import 'dart:developer';
import 'dart:io';
//import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:food_donation/IRepositories/IDonorRepository.dart';
import 'package:food_donation/Models/Donation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import '../Utils/Utils.dart';

class DonorRepository extends IDonorRepository{
  @override
  Future donateFood(BuildContext context, Donation donation,List<XFile> images) async{
    try{
      for(XFile _image in images){
        await uploadImage(_image, donation);
      }
      await FirebaseFirestore.instance.collection("Donations").doc().set(donation.toJson());
      await FirebaseFirestore.instance.collection("Counts").doc("91yPvyPpYYxKWXefTyh7").update({"pendingDonations": FieldValue.increment(1)});
    }catch(e){
      throw e;
    }
  }

  @override
  Future<List<Donation>> getDonations(BuildContext context, String userId) async{
    List<Donation> donations=[];
    try{
      QuerySnapshot<dynamic> querySnapshot=await FirebaseFirestore.instance.collection("Donations").where("userId",isEqualTo: userId).where("status",isNull: true).get();
      if(querySnapshot.docs.length>0){
        for(int i=0;i<querySnapshot.docs.length;i++){
          donations.add(Donation.fromJson(querySnapshot.docs[i].data()));
          log(donations[i].toJson().toString());
        }
      }else{
        Utils.showError(context,"No Donations yet");
      }
      return donations;
    }catch(e){
      throw e;
    }
  }

  Future uploadImage(XFile image,Donation donation)async{
    Reference ref = FirebaseStorage.instance.ref('donationImages/${Uuid().v1()}');
    await ref.putFile(File(image.path));
    donation.images!.add(await ref.getDownloadURL());
    donation.singleImage=donation.images![0];
  }

  // Future uploadImage(XFile image,Donation donation)async{
  //    try{
  //      var request= http.MultipartRequest("POST",Uri.parse(Utils.getImageUploadingUrl()));
  //      request.files.add(
  //          await http.MultipartFile.fromPath(
  //              'image',
  //              image.path
  //          )
  //      );
  //      var res = await request.send();
  //      res.stream.transform(utf8.decoder).listen((value) {
  //        donation.images!.add(jsonDecode(value)["data"]["url"].toString());
  //      });
  //    }catch(e){
  //      throw e;
  //    }
  // }

  @override
  Future<List<Donation>> getFoodRequests(BuildContext context) async{
    List<Donation> donations=[];
    try{
      QuerySnapshot<dynamic> querySnapshot=await FirebaseFirestore.instance.collection("foodRequest").where("status",isNull: true).get();
      if(querySnapshot.docs.length>0){
        for(int i=0;i<querySnapshot.docs.length;i++){
          Donation donation=Donation.fromJson(querySnapshot.docs[i].data());
          donation.id=querySnapshot.docs[i].id;
          donations.add(donation);
        }
      }else{
        Utils.showError(context,"No Requests yet");
      }
      return donations;
    }catch(e){
      throw e;
    }
  }

  @override
  Future fulfillRequest(BuildContext context, String donationId,String comment,double rating,String ratedFor) async{
    try{
      if(FirebaseAuth.instance.currentUser!=null){
        await FirebaseFirestore.instance.collection("foodRequest").doc(donationId).update({"status":FirebaseAuth.instance.currentUser?.uid,"ratedByName":FirebaseAuth.instance.currentUser?.displayName,"ratedOn":DateTime.now().toIso8601String(),"comment":comment,"rating":rating});
        await FirebaseFirestore.instance.collection("Counts").doc("91yPvyPpYYxKWXefTyh7").update({"pendingRequests": FieldValue.increment(-1),"fulfilledRequests":FieldValue.increment(1)});
        await FirebaseFirestore.instance.collection("UserData").doc(ratedFor).update({"rating":FieldValue.arrayUnion([{"rating": rating,"ratedByName": FirebaseAuth.instance.currentUser?.displayName,"ratedById": FirebaseAuth.instance.currentUser?.uid,"comment": comment,"donationId": donationId,"ratedOn": DateTime.now().toIso8601String()}])});
      }
    }catch(e){
      throw e;
    }
  }

  @override
  Future<List<Donation>> getRequestsFulfilledByDonor(BuildContext context,String? userId) async{
    List<Donation> foodRequests=[];
    try{
      QuerySnapshot<dynamic> querySnapshot=await FirebaseFirestore.instance.collection("foodRequest").where("status",isEqualTo: userId).get();
      if(querySnapshot.docs.length>0){
        for(int i=0;i<querySnapshot.docs.length;i++){
          foodRequests.add(Donation.fromJsonforFoodRequest(querySnapshot.docs[i].data()));
          log(foodRequests[i].toJson().toString());
        }

      }else{
        Utils.showError(context,"No FulFilled Requests Yet");
      }
      return foodRequests;
    }catch(e){
      throw e;
    }
  }

  @override
  Future<List<Donation>> getDonationsReceivedByReceivers(BuildContext context,String? userId) async{
    List<Donation> foodRequests=[];
    try{
      QuerySnapshot<dynamic> querySnapshot=await FirebaseFirestore.instance.collection("Donations").where("userId",isEqualTo: userId).where("status",isNull: false).get();
      if(querySnapshot.docs.length>0){
        for(int i=0;i<querySnapshot.docs.length;i++){
          Donation donation=Donation.fromJson(querySnapshot.docs[i].data());
          donation.id=querySnapshot.docs[i].id;
         foodRequests.add(donation);
        }

      }else{
        Utils.showError(context," No Donations Recieved By Recweivers yet");
      }
      return foodRequests;
    }catch(e){
      throw e;
    }
  }

  @override
  Future addPricedDonations(BuildContext context, Donation donation, XFile image) async{
   try{
     await uploadImage(image, donation);
     await FirebaseFirestore.instance.collection("PricedDonations").doc().set(donation.toJsonForPricedDonation());
     await FirebaseFirestore.instance.collection("Counts").doc("91yPvyPpYYxKWXefTyh7").update({"pricedDonations": FieldValue.increment(1)});
   }catch(e){
     throw e;
   }
  }

  @override
  Future<List<Donation>> getPricedDonation(BuildContext context, String? userId) async{
    List<Donation> donations=[];
    try{
      QuerySnapshot<dynamic> querySnapshot=await FirebaseFirestore.instance.collection("PricedDonations").where("userId",isEqualTo: userId).get();
      if(querySnapshot.docs.length>0){
        for(int i=0;i<querySnapshot.docs.length;i++){
          donations.add(Donation.fromJsonforPricedDonation(querySnapshot.docs[i].data()));
          log(donations[i].toJson().toString());
        }
      }else{
        Utils.showError(context,"No Donations yet");
      }
      return donations;
    }catch(e){
      throw e;
    }
  }



}