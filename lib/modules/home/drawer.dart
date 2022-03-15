import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/utils/SizeConfig.dart';
import 'package:flutter_softbook/modules/commonWidgets/background.dart';
import 'package:flutter_softbook/modules/commonWidgets/editWidget.dart';
import 'package:flutter_softbook/modules/party/partyView.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return Drawer(
      child: Background(
        child: Container(
          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*15,
              left: SizeConfig.blockSizeHorizontal*4.5),
          height: SizeConfig.blockSizeVertical*100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(width: SizeConfig.blockSizeHorizontal*22,
                margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*4),
                height: SizeConfig.blockSizeHorizontal*22,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: mainColor),
                ),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical*2,),

              Align(
                alignment: Alignment.centerLeft,
                child: texts("Dilpreet Singh",textColor: Colors.black,fontSize: SizeConfig.blockSizeVertical*2.5,
                    fontWeight: FontWeight.w700)
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: texts("dilpreet@gmail.com",textColor: Colors.black45,fontSize: SizeConfig.blockSizeVertical*1.9,
                      fontWeight: FontWeight.w500)
              ),
              SizedBox(height: SizeConfig.blockSizeVertical*5,),
              Container(
                height: SizeConfig.blockSizeVertical*45.5,
                child: SingleChildScrollView(child: Column(children:
                [
                  GestureDetector(
                    onTap: ()
                    {
                      Get.back();
                    },
                    child: Container(
                       padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.home,size: SizeConfig.blockSizeVertical*3.2,color: mainColor,),
                          SizedBox(width: SizeConfig.blockSizeHorizontal*5,),
                          texts("Dashboard",fontSize: SizeConfig.blockSizeVertical*2.45,
                              fontWeight: FontWeight.w600,textColor: Colors.black)
                        ],),
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.75,),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.settings,size: SizeConfig.blockSizeVertical*3.2,color: mainColor,),
                        SizedBox(width: SizeConfig.blockSizeHorizontal*5,),
                        texts("My Settings",fontSize: SizeConfig.blockSizeVertical*2.45,
                            fontWeight: FontWeight.w600,textColor: Colors.black)
                      ],),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.75,),
                  Divider(),
                  GestureDetector(
                    onTap: ()
                    {
                      Get.back();
                      Get.to(()=>PartyScreen());
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.card_membership_rounded,size: SizeConfig.blockSizeVertical*3.2,color: mainColor,),
                          SizedBox(width: SizeConfig.blockSizeHorizontal*5,),
                          texts("Parties",fontSize: SizeConfig.blockSizeVertical*2.45,
                              fontWeight: FontWeight.w600,textColor: Colors.black)
                        ],),
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.75,),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.production_quantity_limits,size: SizeConfig.blockSizeVertical*3.2,color: mainColor,),
                        SizedBox(width: SizeConfig.blockSizeHorizontal*5,),
                        texts("Items",fontSize: SizeConfig.blockSizeVertical*2.45,
                            fontWeight: FontWeight.w600,textColor: Colors.black)
                      ],),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.75,),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.sell_outlined,size: SizeConfig.blockSizeVertical*3.2,color: mainColor,),
                        SizedBox(width: SizeConfig.blockSizeHorizontal*5,),
                        texts("Sales",fontSize: SizeConfig.blockSizeVertical*2.45,
                            fontWeight: FontWeight.w600,textColor: Colors.black)
                      ],),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.75,),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.wallet_travel,size: SizeConfig.blockSizeVertical*3.2,color: mainColor,),
                        SizedBox(width: SizeConfig.blockSizeHorizontal*5,),
                        texts("Purchase",fontSize: SizeConfig.blockSizeVertical*2.45,
                            fontWeight: FontWeight.w600,textColor: Colors.black)
                      ],),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.75,),
                  Divider(),

              ],),),),
              SizedBox(height: SizeConfig.blockSizeVertical*2.5,),
              Container(
               // padding: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal*20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.logout,size: SizeConfig.blockSizeVertical*3.5,color: mainColor,),
                    SizedBox(width: SizeConfig.blockSizeHorizontal*2,),
                    texts("LogOut",fontSize: SizeConfig.blockSizeVertical*2.45,fontWeight: FontWeight.w700,textColor: Colors.black)
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}