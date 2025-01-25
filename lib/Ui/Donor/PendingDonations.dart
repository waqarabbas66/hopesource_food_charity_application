import 'package:avatar_stack/avatar_stack.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_donation/Controllers/DonorController.dart';
import 'package:food_donation/Ui/Donor/AddDonation.dart';
import 'package:get/get.dart';

import '../../Utils/Constants.dart';
import '../../Utils/Utils.dart';
import '../DetailPages/DonationDetails.dart';

class PendingDonations extends GetView<DonorController>{
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       floatingActionButton: FloatingActionButton(
         backgroundColor: Color2,
         onPressed: () {
           Get.to(()=>AddDonation());
         },
         child: Icon(Icons.add,color: Color6, size: 25,),
       ),
       body:  Column(
         children: [
           Expanded(
               child: ListView(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: InkWell(
                       onTap: (){

                           Get.to(()=>DonationDetailsScreen(0,"Admin"));

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
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.end,
                                 // mainAxisAlignment: MainAxisAlignment.start,
                                 // crossAxisAlignment: CrossAxisAlignment.start,
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
                                           return "3.0";
                                         })(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color2),),
                                       ],
                                     ),
                                   ),

                                   Padding(
                                     padding: const EdgeInsets.all(4.0),
                                     child: Container(
                                       width: 150,
                                       height: 40,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.only(bottomRight: Radius.circular(16)),
                                       ),
                                       child:  AvatarStack(
                                         borderColor: Color1,
                                         borderWidth: 2.5,
                                         height: 50,
                                         avatars: [
                                           for (var n = 1; n < 5; n++)
                                             AssetImage("Assets/charitylogo1.png")
                                         ],
                                       ),
                                     ),
                                   )
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
                                             child:   Center(
                                               child: Text("Fruits", style: TextStyle(
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
                                               child: Text("10", style: TextStyle(
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
                                               child: Text("23 - 01 -2025", style: TextStyle(
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
                                               child: Text("Delivery", style: TextStyle(
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