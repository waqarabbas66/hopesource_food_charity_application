import 'dart:io';
import 'package:flutter/material.dart';
import 'package:food_donation/Utils/LoadingScreen.dart';
import 'package:food_donation/Utils/PickLocation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../Controllers/DonorController.dart';
import '../../Utils/Constants.dart';
import '../../Utils/Utils.dart';

class AddDonation extends StatelessWidget {
  String? selectedCategory,selectedDeliveryType;
  List<String> categories=["Cooked Food","Fruits","Vegetables","Sweets","Chocolates","Cakes","Biscuits","Milk","Grains","Mix Items","Others",];
  List<String> deliveryTypes=["Pick Up","Drop Off"];
  TextEditingController descriptionTextEditingController = TextEditingController();
  TextEditingController addressTextEditingController = TextEditingController();
  TextEditingController personsQuantityTextEditingController = TextEditingController();
  TextEditingController expiryDateTextEditingController = TextEditingController();
  TextEditingController priceTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Color6
        ),
        backgroundColor: Color2,
        centerTitle: true,
        title: Text("Donate Item", style: TextStyle(
            color: Color6,
            fontWeight: FontWeight.bold,
            fontSize: 25
        ),),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:16,right:16,bottom: 16, top: 16),
                child: DropdownButtonFormField<dynamic>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Select Category',

                  ),
                  value: selectedCategory,
                  onChanged: (value) {
                    selectedCategory=value;
                  },
                  items:categories.map((value) {
                    return  DropdownMenuItem<String>(
                      value: value,
                      child: Row(
                        children: <Widget>[
                          Text(
                            value,
                            style:  TextStyle(fontSize: 15, color: Color2, fontWeight: FontWeight.bold),
                          ),
                          //user.icon,
                          //SizedBox(width: MediaQuery.of(context).size.width*0.71,),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, bottom: 16),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  style: TextStyle(color: Color2, fontWeight: FontWeight.bold),
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  controller: descriptionTextEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Description',
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, bottom: 16),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  style: TextStyle(color: Color2, fontWeight: FontWeight.bold),
                  keyboardType: TextInputType.number,
                  controller: personsQuantityTextEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'No of Persons',
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:16,right:16,bottom: 16),
                child: DropdownButtonFormField<dynamic>(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Select Delivery Type'
                  ),

                  value: selectedDeliveryType,
                  onChanged: (value) {
                    selectedDeliveryType=value;
                  },
                  items:deliveryTypes.map((value) {
                    return  DropdownMenuItem<String>(
                      value: value,
                      child: Row(
                        children: <Widget>[
                          Text(
                            value,
                            style: TextStyle(color: Color2, fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          //user.icon,
                          //SizedBox(width: MediaQuery.of(context).size.width*0.71,),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, bottom: 16),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  style: TextStyle(color: Color2, fontWeight: FontWeight.bold),
                  keyboardType: TextInputType.streetAddress,
                  controller: addressTextEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Address',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, bottom: 16),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  style: TextStyle(color: Color2, fontWeight: FontWeight.bold),
                  keyboardType: TextInputType.datetime,
                  controller: expiryDateTextEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Expiry Date',
                  ),
                  onTap: ()async{
                    FocusScope.of(context).requestFocus(new FocusNode());
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(Duration(days: 365))
                    ).then((date){
                      expiryDateTextEditingController.text=DateFormat("dd-MM-yyyy").format(date!);
                    });
                  },
                ),
              ),

              ElevatedButton(
                  onPressed: (){
                    Utils.pickImages().then((images){
                      if(images!=null){
                        if(images.length>6){
                          showDialog(context: context, builder:(context){
                            return AlertDialog(
                              title: Text("Caution!"),
                              content: Text("Please select only 6 images"),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.pop(context);
                                }, child: Text("Ok"))
                              ],
                            );
                          });
                        }else{

                        }
                      }
                    });
                  },
                  child: Text("Pick Images", style: TextStyle(color: Color6, fontWeight: FontWeight.bold, fontSize: 15),)
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Visibility(
                  visible: false,
                  child: Container(
                      height: 90,
                      child: Obx(() =>  ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder:(context,index){
                            return Container(
                              width: 130,
                              height: 70,
                              child: Image.network("https://www.nicepng.com/png/full/522-5226533_get-beyond-the-usual-suspects-profile-pic-icon.png"),
                            );
                          }),)
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 270,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {
                   // controller.donateFood(context);
                  },
                  child: Text(
                    'Donate',
                    style: TextStyle(color: Color6, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }

}
