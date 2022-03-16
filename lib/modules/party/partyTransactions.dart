import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/utils/SizeConfig.dart';
import 'package:flutter_softbook/modules/commonWidgets/background.dart';
import 'package:flutter_softbook/modules/commonWidgets/editWidget.dart';
import 'package:flutter_softbook/modules/forgotPassword/forgotPasswordView.dart';
import 'package:flutter_softbook/modules/home/drawer.dart';
import 'package:flutter_softbook/modules/home/homeCont.dart';
import 'package:flutter_softbook/modules/login/loginEmailCont.dart';
import 'package:flutter_softbook/modules/party/addPartyController.dart';
import 'package:flutter_softbook/modules/party/partyController.dart';
import 'package:flutter_softbook/modules/signup/signUpView.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';


class PartyTransactionScreen extends StatelessWidget {
  var controller = Get.put(PartyController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> widgetList = [];
    var child =  Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        title: texts("Transaction",fontSize: SizeConfig.blockSizeVertical*2.5,
            textColor: Colors.white,fontWeight: FontWeight.w600),
      ),

      body: SafeArea(
        top: true,
        child: Container(
          width: Get.width,
            height: Get.height,
            child: Column(
              children: [
               Container(
                 width: SizeConfig.blockSizeHorizontal*100,
                 height: SizeConfig.blockSizeVertical*20,
                 padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5,
                     vertical: SizeConfig.blockSizeVertical*1),
                 margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5,
                     vertical: SizeConfig.blockSizeVertical*1.5),
                 decoration: BoxDecoration(
                   color: Colors.white,borderRadius: BorderRadius.circular(14.0),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.black26,
                       blurRadius: 3.0,
                     ),
                   ]
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                   texts("Rishab Goyal ",fontSize: SizeConfig.blockSizeVertical*2.4,isCentered: true,
                       fontWeight: FontWeight.w600,textColor: Colors.black),
                     texts("rishab12@yopmail.com ",fontSize: SizeConfig.blockSizeVertical*1.9,isCentered: true,
                         fontWeight: FontWeight.w500,textColor: Colors.black45),
                     texts("7508988874",fontSize: SizeConfig.blockSizeVertical*1.9,isCentered: true,
                         fontWeight: FontWeight.w500,textColor: Colors.black45),
                     texts("GST: N/A",fontSize: SizeConfig.blockSizeVertical*1.9,isCentered: true,
                         fontWeight: FontWeight.w600,textColor: Colors.black54),
                     texts("21/12 Green Street, Meherpur Bangladesh",fontSize: SizeConfig.blockSizeVertical*1.9,isCentered: true,
                         fontWeight: FontWeight.w600,textColor: Colors.black54),
                 ],),


               ),
                SizedBox(height: SizeConfig.blockSizeVertical*2,),
                Expanded(child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context,index){
                   return Container(
                     margin: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical*0.25),
                     child: Container(
                       padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*4,
                           vertical: SizeConfig.blockSizeVertical*1),
                       margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5,
                           vertical: SizeConfig.blockSizeVertical*1.5),
                       width: SizeConfig.blockSizeHorizontal*95,
                       height: SizeConfig.blockSizeVertical*18,
                       decoration: BoxDecoration(
                           color: Colors.white,borderRadius: BorderRadius.circular(8.0),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.black26,
                               blurRadius: 3.0,
                             ),
                           ]
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           texts("Billing Name",fontSize: SizeConfig.blockSizeVertical*2.2,isCentered: true,
                               fontWeight: FontWeight.w700,textColor: Colors.black),
                         SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 texts("Invoice Number",fontSize: SizeConfig.blockSizeVertical*1.9,isCentered: true,
                                     fontWeight: FontWeight.w500,textColor: Colors.black45),
                                 texts("1022",fontSize: SizeConfig.blockSizeVertical*1.9,isCentered: true,
                                     fontWeight: FontWeight.w600,textColor: Colors.black54),
                               ],
                             ),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.end,
                               children: [
                                 texts("Invoice Number",fontSize: SizeConfig.blockSizeVertical*1.9,isCentered: true,
                                     fontWeight: FontWeight.w500,textColor: Colors.black45),
                                 texts("1022",fontSize: SizeConfig.blockSizeVertical*1.9,isCentered: true,
                                     fontWeight: FontWeight.w600,textColor: Colors.black54),
                               ],
                             ),
                           ],
                         ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   texts("Invoice Date",fontSize: SizeConfig.blockSizeVertical*1.9,isCentered: true,
                                       fontWeight: FontWeight.w500,textColor: Colors.black45),
                                   texts("22-10-2022",fontSize: SizeConfig.blockSizeVertical*1.9,isCentered: true,
                                       fontWeight: FontWeight.w600,textColor: Colors.black54),
                                 ],
                               ),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.end,
                                 children: [
                                   texts("Amount",fontSize: SizeConfig.blockSizeVertical*1.9,isCentered: true,
                                       fontWeight: FontWeight.w500,textColor: Colors.black45),
                                   texts("1000",fontSize: SizeConfig.blockSizeVertical*1.9,isCentered: true,
                                       fontWeight: FontWeight.w600,textColor: Colors.black54),
                                 ],
                               ),
                             ],
                           ),



                       ],),
                     ),
                   );
                }))
            ],)
        ),
      ),
    );
    widgetList.add(child);
    final modal = Obx(
          () => controller.showLoader.value
          ? Stack(
        children: [
          new Opacity(
            opacity: 0.5,
            child: ModalBarrier(dismissible: false, color: Colors.grey),
          ),
          new Center(
            child: new CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation<Color>(colorPrimary),
            ),
          ),
        ],
      )
          : SizedBox(),
    );
    widgetList.add(modal);
    return Stack(children: widgetList);
  }
}