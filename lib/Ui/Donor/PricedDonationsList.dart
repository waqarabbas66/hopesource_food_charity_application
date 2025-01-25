import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_donation/Controllers/DonorController.dart';
import 'package:food_donation/Ui/DetailPages/PaidDonationsDetails.dart';
import 'package:food_donation/Ui/Donor/AddPricedDonation.dart';
import 'package:get/get.dart';

import '../../Utils/Constants.dart';
import '../../Utils/StatefulWrapper.dart';
import '../../Utils/Utils.dart';

class PricedDonationList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color2,
        child: Icon(Icons.add,color: Colors.white,),
        onPressed: (){
          Get.to(()=>AddPricedDonation());
        },
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Get.to(()=>PaidDonationsDetails(0,"Admin"));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        // height: 180,
                        child: Row(
                          children: [
                            Container(
                              height: 185,
                              width: 130,

                              decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
                                  border: Border.all(color: Color1, width: 2),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("Assets/cherries.jpg")
                                  )
                              ),

                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      //width: MediaQuery.of(context).size.width,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          color: Color2,
                                          border: Border.all(color: Color1, width: 2)
                                      ),
                                      child:   Center(
                                        child: Text("Waqar Abbas", style: TextStyle(
                                            color: Color6, fontSize: 25, fontWeight: FontWeight.bold
                                        ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 4,),
                                    Row(
                                      children: [
                                        Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            color: Color1,
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: Color2, width: 2),
                                          ),
                                          child: Center(child: FaIcon(FontAwesomeIcons.boxesStacked, color: Color2, size: 18,)),
                                        ),
                                        SizedBox(width: 4,),
                                        Expanded(
                                          child: Container(
                                            height: 35,
                                            decoration: BoxDecoration(
                                              //color: Color2,
                                              border: Border.all(color: Color1, width: 2),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child:   Center(
                                              child: Text("some Description...", style: TextStyle(
                                                  color: Color2, fontSize: 18, fontWeight: FontWeight.bold
                                              ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 2,),
                                    Row(
                                      children: [
                                        Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            color: Color1,
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: Color2, width: 2),
                                          ),
                                          child: Center(child: FaIcon(FontAwesomeIcons.users, color: Color2, size: 18,)),
                                        ),
                                        SizedBox(width: 4,),
                                        Expanded(
                                          child: Container(
                                            height: 35,
                                            decoration: BoxDecoration(
                                              //color: Color2,
                                              border: Border.all(color: Color1, width: 2),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child:   Center(
                                              child: Text("7", style: TextStyle(
                                                  color: Color2, fontSize: 17, fontWeight: FontWeight.bold
                                              ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 2,),
                                    Row(
                                      children: [
                                        Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            color: Color1,
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: Color2, width: 2),
                                          ),
                                          child: Center(child: FaIcon(FontAwesomeIcons.hourglassStart, color: Color2, size: 18,)),
                                        ),
                                        SizedBox(width: 4,),
                                        Expanded(
                                          child: Container(
                                            height: 35,
                                            decoration: BoxDecoration(
                                              //color: Color2,
                                              border: Border.all(color: Color1, width: 2),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child: Center(
                                              child: Text("25 - 01 - 2025", style: TextStyle(
                                                  color: Color2, fontSize: 17, fontWeight: FontWeight.bold
                                              ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 2,),
                                    Row(
                                      children: [
                                        Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            color: Color1,
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: Color2, width: 2),
                                          ),
                                          child: Center(child: FaIcon(FontAwesomeIcons.moneyBill, color: Color2, size: 18,)),
                                        ),
                                        SizedBox(width: 4,),
                                        Expanded(
                                          child: Container(
                                            height: 35,
                                            decoration: BoxDecoration(
                                              //color: Color2,
                                              border: Border.all(color: Color1, width: 2),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child:   Center(
                                              child: Text("300", style: TextStyle(
                                                  color: Color2, fontSize: 17, fontWeight: FontWeight.bold
                                              ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
          ),
        ],
      )
    );
  }
}



