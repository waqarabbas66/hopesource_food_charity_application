import 'package:flutter/material.dart';
import 'package:food_donation/Controllers/AccountController.dart';
import 'package:get/get.dart';

import '../../Utils/Constants.dart';
import '../../Utils/LoadingScreen.dart';

class ResetPasswordScreen extends StatelessWidget {
TextEditingController email = TextEditingController();
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
                "Reset Your Password",
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
                  controller:email,
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
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                 // controller.resetPassword(context);
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
                      "Reset Password",
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
