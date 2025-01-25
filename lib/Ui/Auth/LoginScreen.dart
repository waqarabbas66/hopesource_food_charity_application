import 'package:flutter/material.dart';
import 'package:food_donation/Ui/Admin/AdminDashboard.dart';
import 'package:food_donation/Ui/Donor/DonorHome.dart';
import 'package:food_donation/Ui/Receiver/ReceiverHome.dart';
import 'package:food_donation/Utils/LoadingScreen.dart';
import 'package:get/get.dart';
import '../../Controllers/AccountController.dart';
import '../../Utils/Constants.dart';
import '../../Utils/Utils.dart';


class LoginScreen extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
    child: Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 16.0,top: 30),
    child: Row(
    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    IconButton(
    icon: Icon(Icons.arrow_back_ios, color: Color2,size:30),
    onPressed: (){
    Navigator.pop(context);
    },
    ),
    ],
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(top:30.0,bottom: 16),
    child: Image.asset(
    "Assets/charitylogo1.png",
    fit: BoxFit.fill,
    width: 150,
    height: 150,
    ),
    ),
    Text(
    "Welcome Back...",
    style: TextStyle(
    color: Color2,
    fontWeight: FontWeight.bold,
    fontSize: 40
    ),
    ),
    Text(
    "Log In to Continue",
    style: TextStyle(
    color: Color3,
    fontWeight: FontWeight.w400,
    fontSize: 18
    ),
    ),
    SizedBox(height: 10,),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
    controller: email,
    keyboardType: TextInputType.emailAddress,
    style: TextStyle(color: Color2,fontWeight: FontWeight.bold),
    obscureText: false,
    decoration: InputDecoration(
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color1, width: 3.0)
    ),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color1, width: 2.0)
    ),
    labelText: "Email",
    labelStyle: TextStyle(color: Color2, fontWeight: FontWeight.bold),

    ),
    textInputAction: TextInputAction.next,
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
    controller: password,
    keyboardType: TextInputType.visiblePassword,
    //controller: name,
    style: TextStyle(color: Color2,fontWeight: FontWeight.bold),
    obscureText: true,
    decoration: InputDecoration(
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color1, width: 3.0)
    ),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color1, width: 2.0)
    ),
    labelText: "Password",
    labelStyle: TextStyle(color: Color2, fontWeight: FontWeight.bold),

    ),
    textInputAction: TextInputAction.next,
    ),
    ),


    SizedBox(height: 10,),
    InkWell(
    onTap: (){
      if(email.text.isNotEmpty && password.text.isNotEmpty) {
        if (email.text == "admin@admin.com" && password.text == "admin@123") {
          Get.to(() => AdminDashboard());
        }
        else if (email.text == "donor@donor.com" && password.text == "donor@123") {
          Get.to(() => DonorHome());
        }
        else if (email.text == "receiver@receiver.com" && password.text == "receiver@123") {
          Get.to(() => ReceiverHome());
        }
      }else {
        Utils.showError(context,"Email and Password are Required!");
      }
    // controller.signIn(context);
    },
    child: Container(
    width: 350,
    height: 60,
    decoration: BoxDecoration(
    color: Color2,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(width: 2, color: Color1)
    ),
    child: Center(
    child: Text(
    "Log In",
    style: TextStyle(
    color: Color1,
    fontWeight: FontWeight.bold,
    fontSize: 30
    ),
    ),
    ),
    ),
    ),

    ],
    ),
    )
    );
  }
}
