import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../Controllers/AdminController.dart';
import '../../Utils/Constants.dart';
import '../../Utils/StatefulWrapper.dart';
import '../../Utils/Utils.dart';
import '../DetailPages/PaidDonationsDetails.dart';

class PricedDonationListAdmin extends StatelessWidget{
  var _selected=[];
  List<String> categories=["Cooked Food","Fruits","Vegetables","Sweets","Chocolates","Cakes","Biscuits","Milk","Grains","Mix Items","Others",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color2,
        title: Text("Paid Donations",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        centerTitle: true,

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                //color: Colors.white12,
                child: buildChips(context,"")
            ),
          ),
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