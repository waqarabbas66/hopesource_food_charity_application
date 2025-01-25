import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_donation/Controllers/AdminController.dart';
import 'package:food_donation/Ui/Admin/RatingList.dart';
import 'package:food_donation/Ui/Donor/DonorHistory.dart';
import 'package:food_donation/Utils/StatefulWrapper.dart';
import 'package:get/get.dart';

import '../../Utils/Constants.dart';
import '../../Utils/Utils.dart';
import '../Receiver/ReceiverHistory.dart';

class UsersList extends StatelessWidget{
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(roleId==1?"Donors":"Receivers", style: TextStyle(
            color: Color6,
            fontWeight: FontWeight.bold,
            fontSize: 25
        ),),
        centerTitle: true,
        backgroundColor: Color2,
      ),
      body: ListView(
        children: [
          Slidable(

            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (BuildContext context){
                    // if(controller.usersList[index].rating!=null){
                    //   Get.to(() => RatingList(controller.usersList[index].rating));
                    // }else{
                    //   Utils.showError(context,"No one Rated this User yet");
                    // }
                  },
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  icon: Icons.star,
                  label: 'Rating',
                ),
                SlidableAction(
                  onPressed: (BuildContext context){
                    // if(roleId==2) {
                    //   Get.to(() => ReceiverHistory(userId: controller.usersList[index].userId));
                    // }else{
                    //   Get.to(() => DonorHistory(controller.usersList[index].userId));
                    // }
                  },
                  backgroundColor: Color(0xFF21B7CA),
                  foregroundColor: Colors.white,
                  icon: Icons.history,
                  label: 'History',
                ),
              ],
            ),
            startActionPane: ActionPane(
              extentRatio: 0.3,
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (BuildContext context){
                    // print("isBlocked "+(controller.usersList[index].isBlocked).toString());
                    // controller.blockUser(context, controller.usersList[index].userId,controller.usersList[index].isBlocked!=null?!controller.usersList[index].isBlocked:true).then((value){
                    //   controller.getUsersByRole(context, roleId);
                    // }).catchError((error){
                    //   Utils.showError(context,error.toString());
                    // });
                  },
                  backgroundColor: Color(0xFFFE4A49),
                  foregroundColor: Colors.white,
                  icon: Icons.block,
                  label: 'UnBlock/Block',
                ),
              ],
            ),
            child: InkWell(
              onTap: (){

              },
              child: Card(
                elevation: 8,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  //height: 100,
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage("Assets/charitylogo.png")
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Color1,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FaIcon(FontAwesomeIcons.solidStar, color: Colors.amberAccent, size: 15,),
                                          SizedBox(width: 3,),
                                          Text((() {

                                            return "4.0";
                                          })(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color2),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      FaIcon(FontAwesomeIcons.ban, color: Colors.red, size: 20,),
                                    ],
                                  )
                              ),
                            ),


                          ],
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
                                  child: Text("Waqar", style: TextStyle(
                                      color: Color6, fontSize: 20, fontWeight: FontWeight.bold
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
                                    child: Center(child: FaIcon(FontAwesomeIcons.at, color: Color2, size: 18,)),
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
                                        child: Text("waqarabbas88@gmail.com", style: TextStyle(
                                            color: Color2, fontSize: 14, fontWeight: FontWeight.bold
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
                                    child: Center(child: FaIcon(FontAwesomeIcons.phoneFlip, color: Color2, size: 18,)),
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
                                        child: Text("090078601", style: TextStyle(
                                            color: Color2, fontSize: 16, fontWeight: FontWeight.bold
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
            ),
          ),
          Slidable(

            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (BuildContext context){
                    // if(controller.usersList[index].rating!=null){
                    //   Get.to(() => RatingList(controller.usersList[index].rating));
                    // }else{
                    //   Utils.showError(context,"No one Rated this User yet");
                    // }
                  },
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  icon: Icons.star,
                  label: 'Rating',
                ),
                SlidableAction(
                  onPressed: (BuildContext context){
                    // if(roleId==2) {
                    //   Get.to(() => ReceiverHistory(userId: controller.usersList[index].userId));
                    // }else{
                    //   Get.to(() => DonorHistory(controller.usersList[index].userId));
                    // }
                  },
                  backgroundColor: Color(0xFF21B7CA),
                  foregroundColor: Colors.white,
                  icon: Icons.history,
                  label: 'History',
                ),
              ],
            ),
            startActionPane: ActionPane(
              extentRatio: 0.3,
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (BuildContext context){
                    // print("isBlocked "+(controller.usersList[index].isBlocked).toString());
                    // controller.blockUser(context, controller.usersList[index].userId,controller.usersList[index].isBlocked!=null?!controller.usersList[index].isBlocked:true).then((value){
                    //   controller.getUsersByRole(context, roleId);
                    // }).catchError((error){
                    //   Utils.showError(context,error.toString());
                    // });
                  },
                  backgroundColor: Color(0xFFFE4A49),
                  foregroundColor: Colors.white,
                  icon: Icons.block,
                  label: 'UnBlock/Block',
                ),
              ],
            ),
            child: InkWell(
              onTap: (){

              },
              child: Card(
                elevation: 8,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  //height: 100,
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage("Assets/charitylogo.png")
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Color1,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FaIcon(FontAwesomeIcons.solidStar, color: Colors.amberAccent, size: 15,),
                                          SizedBox(width: 3,),
                                          Text((() {

                                            return "4.5";
                                          })(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color2),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container()
                                    ],
                                  )
                              ),
                            ),


                          ],
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
                                  child: Text("Abbas", style: TextStyle(
                                      color: Color6, fontSize: 20, fontWeight: FontWeight.bold
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
                                    child: Center(child: FaIcon(FontAwesomeIcons.at, color: Color2, size: 18,)),
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
                                        child: Text("waqarabbas99@gmail.com", style: TextStyle(
                                            color: Color2, fontSize: 14, fontWeight: FontWeight.bold
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
                                    child: Center(child: FaIcon(FontAwesomeIcons.phoneFlip, color: Color2, size: 18,)),
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
                                        child: Text("090078601", style: TextStyle(
                                            color: Color2, fontSize: 16, fontWeight: FontWeight.bold
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
            ),
          ),
        ],
      )
    );
  }
  int roleId;
  UsersList({this.roleId=0});
}

