import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/utils/SizeConfig.dart';
import 'package:flutter_softbook/modules/commonWidgets/background.dart';
import 'package:flutter_softbook/modules/commonWidgets/editWidget.dart';
import 'package:flutter_softbook/modules/item/itemView.dart';
import 'package:flutter_softbook/modules/item/productView.dart';
import 'package:flutter_softbook/modules/item/serviceView.dart';
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
                  ExpansionTile(
                    leading: Icon(Icons.home,size: SizeConfig.blockSizeVertical*3.2,color: mainColor,),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: SizeConfig.blockSizeVertical*2.2,
                      color: Colors.black54,
                    ),
                    title: texts("Dashboard",fontSize: SizeConfig.blockSizeVertical*2.45,
                        fontWeight: FontWeight.w600,textColor: Colors.black),
                    children: <Widget>[

                    ],
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.settings,size: SizeConfig.blockSizeVertical*3.2,color: mainColor,),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: SizeConfig.blockSizeVertical*2.2,
                      color: Colors.black54,
                    ),
                    title: texts("My Settings",fontSize: SizeConfig.blockSizeVertical*2.45,
                        fontWeight: FontWeight.w600,textColor: Colors.black),
                    children: <Widget>[

                    ],
                  ),
                  ExpansionTile(
                    leading:  Icon(Icons.card_membership_rounded,size: SizeConfig.blockSizeVertical*3.2,color: mainColor,),
                   onExpansionChanged: (f)
                    {
                      Get.back();
                      Get.to(()=>PartyScreen());
                    },
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: SizeConfig.blockSizeVertical*2.2,
                      color: Colors.black54,
                    ),
                    title:  texts("Parties",fontSize: SizeConfig.blockSizeVertical*2.45,
                        fontWeight: FontWeight.w600,textColor: Colors.black),
                    children: <Widget>[

                    ],
                  ),
                  ExpansionTile(
                    leading:  Icon(Icons.production_quantity_limits,size: SizeConfig.blockSizeVertical*3.2,color: mainColor,),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: SizeConfig.blockSizeVertical*2.2,
                      color: Colors.black54,
                    ),
                    title:  texts("Items",fontSize: SizeConfig.blockSizeVertical*2.45,
                        fontWeight: FontWeight.w600,textColor: Colors.black),
                    expandedCrossAxisAlignment: CrossAxisAlignment.center,expandedAlignment: Alignment.centerLeft,
                    children: <Widget>[

                      GestureDetector(
                        onTap: ()
                        {
                          Get.back();
                          Get.to(()=>ItemScreen());
                        },
                        child: Row(
                          children: [
                            SizedBox(width: SizeConfig.blockSizeHorizontal*16,),
                            Icon(Icons.arrow_forward,size: SizeConfig.blockSizeVertical*2.2,color: Colors.black54,),
                            SizedBox(width: SizeConfig.blockSizeHorizontal*4,),
                            texts("Item List",fontSize: SizeConfig.blockSizeVertical*2.15,
                                fontWeight: FontWeight.w500,textColor: Colors.black54),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          Get.back();
                          Get.to(()=>ItemProductScreen());
                        },
                        child: Row(
                          children: [
                            SizedBox(width: SizeConfig.blockSizeHorizontal*16,),
                            Icon(Icons.arrow_forward,size: SizeConfig.blockSizeVertical*2.2,color: Colors.black54,),
                            SizedBox(width: SizeConfig.blockSizeHorizontal*4,),
                            texts("Add Product Item",fontSize: SizeConfig.blockSizeVertical*2.15,
                                fontWeight: FontWeight.w500,textColor: Colors.black54),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          Get.back();
                          Get.to(()=>ItemServiceScreen());
                        },
                        child: Row(
                          children: [
                            SizedBox(width: SizeConfig.blockSizeHorizontal*16,),
                            Icon(Icons.arrow_forward,size: SizeConfig.blockSizeVertical*2.2,color: Colors.black54,),
                            SizedBox(width: SizeConfig.blockSizeHorizontal*4,),
                            texts("Add Service Item",fontSize: SizeConfig.blockSizeVertical*2.15,
                                fontWeight: FontWeight.w500,textColor: Colors.black54),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading:  Icon(Icons.sell_outlined,size: SizeConfig.blockSizeVertical*3.2,color: mainColor,),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: SizeConfig.blockSizeVertical*2.2,
                      color: Colors.black54,
                    ),
                    title:  texts("Sales",fontSize: SizeConfig.blockSizeVertical*2.45,
                        fontWeight: FontWeight.w600,textColor: Colors.black),
                    children: <Widget>[
                      GestureDetector(
                        onTap: ()
                        {
                          Get.back();
                        },
                        child: Row(
                          children: [
                            SizedBox(width: SizeConfig.blockSizeHorizontal*16,),
                            Icon(Icons.arrow_forward,size: SizeConfig.blockSizeVertical*2.2,color: Colors.black54,),
                            SizedBox(width: SizeConfig.blockSizeHorizontal*4,),
                            texts("Sales Invoice",fontSize: SizeConfig.blockSizeVertical*2.15,
                                fontWeight: FontWeight.w500,textColor: Colors.black54),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          Get.back();
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: SizeConfig.blockSizeHorizontal*16,),
                            Icon(Icons.arrow_forward,size: SizeConfig.blockSizeVertical*2.2,color: Colors.black54,),
                            SizedBox(width: SizeConfig.blockSizeHorizontal*4,),
                            Container(
                              width: SizeConfig.blockSizeHorizontal*43,
                              child: texts("Sales Return/Cr. Note",fontSize: SizeConfig.blockSizeVertical*2.15,
                                  fontWeight: FontWeight.w500,textColor: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  ExpansionTile(
                    leading:  Icon(Icons.wallet_travel,size: SizeConfig.blockSizeVertical*3.2,color: mainColor,),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: SizeConfig.blockSizeVertical*2.2,
                      color: Colors.black54,
                    ),
                    title:  texts("Purchase",fontSize: SizeConfig.blockSizeVertical*2.45,
                        fontWeight: FontWeight.w600,textColor: Colors.black),
                    children: <Widget>[

                    ],
                  ),

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