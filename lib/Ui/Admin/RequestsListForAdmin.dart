import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_donation/Utils/StatefulWrapper.dart';
import 'package:get/get.dart';
import '../../Controllers/AdminController.dart';
import '../../Utils/Constants.dart';

import '../DetailPages/FoodRequestDetailPage.dart';

class RequestsListForAdmin  extends StatelessWidget {

  int type;
  var _selected=[];
  List<String> categories=["Cooked Food","Fruits","Vegetables","Sweets","Chocolates","Cakes","Biscuits","Milk","Grains","Mix Items","Others",];
  RequestsListForAdmin(this.type);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(type==0?"Pending Requests":"Concluded Requests"),
        centerTitle: true,
        backgroundColor: Color2,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                //color: Colors.white12,
                child: buildChips(context,"Food Requests")
            ),
          ),
          Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                          Get.to(()=>FoodRequestDetailPage("Admin",0));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        // height: 180,
                        child: Row(
                          children: [
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
                                        child: Text("Waqar", style: TextStyle(
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
                                          child: Center(child: FaIcon(FontAwesomeIcons.sitemap, color: Color2, size: 18,)),
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
                                            child:  Center(
                                              child: Text("Cooked Food", style: TextStyle(
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
                                              child: Text("5", style: TextStyle(
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
                                          child: Center(child: FaIcon(FontAwesomeIcons.calendar, color: Color2, size: 18,)),
                                        ),
                                        SizedBox(width: 4,),
                                        Expanded(
                                          child: Container(
                                            height: 35,
                                            decoration: BoxDecoration(
                                              //color: Color2,
                                                border: Border.all(color: Color1, width: 2),
                                                borderRadius: BorderRadius.circular(8)
                                            ),
                                            child:   Center(
                                              child: Text("20 - 01 - 2025", style: TextStyle(
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
                                          child: Center(child: FaIcon(FontAwesomeIcons.truck, color: Color2, size: 18,)),
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
                                              child: Text("Pick Up", style: TextStyle(
                                                  color: Color2, fontSize: 17, fontWeight: FontWeight.bold
                                              ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 2,),
                                    // Row(
                                    //   children: [
                                    //     Container(
                                    //       width: 35,
                                    //       height: 35,
                                    //       decoration: BoxDecoration(
                                    //         color: Color1,
                                    //         borderRadius: BorderRadius.circular(8),
                                    //         border: Border.all(color: Color2, width: 2),
                                    //       ),
                                    //       child: Center(child: FaIcon(FontAwesomeIcons.mapMarkerAlt, color: Color2, size: 18,)),
                                    //     ),
                                    //     SizedBox(width: 4,),
                                    //     Expanded(
                                    //       child: Container(
                                    //         height: 35,
                                    //         decoration: BoxDecoration(
                                    //           //color: Color2,
                                    //           border: Border.all(color: Color1, width: 2),
                                    //           borderRadius: BorderRadius.circular(8),
                                    //         ),
                                    //         child:   Center(
                                    //           child: Text(Utils.getDeliveryTypeName(controller.filteredList[index].deliveryType), style: TextStyle(
                                    //               color: Color2, fontSize: 17, fontWeight: FontWeight.bold
                                    //           ),
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
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
                                          child: Center(child: FaIcon(FontAwesomeIcons.mapLocation, color: Color2, size: 18,)),
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
                                              child: Text("Austraila", style: TextStyle(
                                                  color: Color2, fontWeight: FontWeight.bold
                                              ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 2,),
                                    // Row(
                                    //   children: [
                                    //     Container(
                                    //       width: 35,
                                    //       height: 35,
                                    //       decoration: BoxDecoration(
                                    //         color: Color1,
                                    //         borderRadius: BorderRadius.circular(8),
                                    //         border: Border.all(color: Color2, width: 2),
                                    //       ),
                                    //       child: Center(child: FaIcon(FontAwesomeIcons.phone, color: Color2, size: 18,)),
                                    //     ),
                                    //     SizedBox(width: 4,),
                                    //     Expanded(
                                    //       child: Container(
                                    //         height: 35,
                                    //         decoration: BoxDecoration(
                                    //           //color: Color2,
                                    //           border: Border.all(color: Color1, width: 2),
                                    //           borderRadius: BorderRadius.circular(8),
                                    //         ),
                                    //         child:   Center(
                                    //           child: Text(Utils.getDeliveryTypeName(controller.filteredList[index].deliveryType), style: TextStyle(
                                    //               color: Color2, fontSize: 17, fontWeight: FontWeight.bold
                                    //           ),
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),

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
      ),
    );
  }
  Widget buildChips(BuildContext context,String type) {
    List<Widget> chips =[];

    for (int i = 0; i < categories.length; i++) {
      _selected.add(false);
      FilterChip filterChip = FilterChip(
        selected: _selected[i],
        label: Text(categories[i], style: TextStyle(color: Color6, fontWeight: FontWeight.bold)),
        // avatar: FlutterLogo(),
        elevation: 5,
        pressElevation: 5,
        //shadowColor: Colors.teal,
        backgroundColor: Color2,
        selectedColor: Color1,
        onSelected: (bool selected) {
          for(int j=0;j<_selected.length;j++){
            if(_selected[j]){
              _selected[j]=false;
            }
          }
          _selected[i] = selected;
          if(_selected[i]){

          }else{
            // if(type=="Food Requests"){
            //   filteredList.clear();
            //   filteredList.assignAll(requestListForAdmin);
            // }else{
            //   filteredList.clear();
            //   filteredList.assignAll(donationListForAdmin);
            // }
            // WidgetsBinding.instance
            //     .addPostFrameCallback((_) => _refreshIndicatorKey.currentState.show());
          }


        },
      );

      chips.add(Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: filterChip
      ));
    }

    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }
}
