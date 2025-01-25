import 'package:flutter/material.dart';
import 'package:food_donation/Controllers/ReceiverController.dart';
import 'package:food_donation/Utils/LoadingScreen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import '../../Utils/Constants.dart';
import '../../Utils/PickLocation.dart';
import '../../Utils/Utils.dart';


class RequestFood extends StatelessWidget {
  List<String> categories=["Cooked Food","Fruits","Vegetables","Sweets","Chocolates","Cakes","Biscuits","Milk","Grains","Mix Items","Others",];
  String? selectedCategory,selectedDeliveryType;
  List<String> deliveryTypes=["Pick Up","Drop Off"];
  TextEditingController addressTextEditingController = TextEditingController();
  TextEditingController personsQuantityTextEditingController = TextEditingController();
  TextEditingController descriptionTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Color6
        ),
        backgroundColor: Color2,
        centerTitle: true,
        title: Text("Add Request", style: TextStyle(
            color: Color6,
            fontWeight: FontWeight.bold,
            fontSize: 25
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:16,right:16,bottom: 16, top: 16),
              child: DropdownButtonFormField<dynamic>(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Select Category'
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
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Color2, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Color2)),
                onPressed: () {
                 // controller.requestFood(context);
                },
                child: Text(
                  'Request Food',
                  style: TextStyle(color: Color6, fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
