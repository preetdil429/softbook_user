import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/utils/SizeConfig.dart';
import 'package:flutter_softbook/modules/commonWidgets/background.dart';
import 'package:flutter_softbook/modules/commonWidgets/editWidget.dart';
import 'package:flutter_softbook/modules/forgotPassword/forgotPasswordView.dart';
import 'package:flutter_softbook/modules/home/drawer.dart';
import 'package:flutter_softbook/modules/home/homeCont.dart';
import 'package:flutter_softbook/modules/item/itemController.dart';
import 'package:flutter_softbook/modules/login/loginEmailCont.dart';
import 'package:flutter_softbook/modules/party/addPartyController.dart';
import 'package:flutter_softbook/modules/party/addPartyView.dart';
import 'package:flutter_softbook/modules/party/partyController.dart';
import 'package:flutter_softbook/modules/party/partyTransactions.dart';
import 'package:flutter_softbook/modules/signup/signUpView.dart';
import 'package:get/get.dart';


class  ItemScreen extends StatelessWidget
{
  var controller = Get.put(ItemController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> widgetList = [];
    var child =  Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        leading: GestureDetector(onTap: ()
        {
          Get.back();
        },
          child: Icon(Icons.arrow_back,size: SizeConfig.blockSizeVertical*3,color: Colors.white,),
        ),
        /*actions: [
          GestureDetector(onTap: ()
          {
            Get.to(()=>AddPartyScreen());
          },
            child: Container(
                padding: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal*2.5),
                child: Icon(Icons.add,size: SizeConfig.blockSizeVertical*3.5,color: Colors.white,)),
          ),
        ],*/
        title: texts("Manage Items",fontSize: SizeConfig.blockSizeVertical*2.5,
            textColor: Colors.white,fontWeight: FontWeight.w600),
      ),
      /*floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical*5,right: SizeConfig.blockSizeHorizontal*5),
        child: FloatingActionButton(
          onPressed: ()
          {

          },
          backgroundColor: mainColor,
          child: Icon(Icons.add,color: Colors.white,size: SizeConfig.blockSizeVertical*4,),),
      ),*/
      body: SafeArea(
        top: true,
        child: Container(
            child: Column(children: [
              SizedBox(height: SizeConfig.blockSizeVertical*4,),
              Expanded(child: ListView.builder(
                  shrinkWrap: true,
                  addAutomaticKeepAlives: true,
                  itemBuilder: (context,index)
                  {
                    return GestureDetector(
                      onTap: ()
                      {
                        Get.to(()=>PartyTransactionScreen());
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5,vertical: SizeConfig.blockSizeVertical*1),
                        padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5,vertical: SizeConfig.blockSizeVertical*1.5),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 2.0,
                              ),]
                        ),
                        child: Row(children: [
                          Column(
                            children: [
                              Container(
                                width: SizeConfig.blockSizeHorizontal*60,
                                child: texts("Rishab Party",fontSize: SizeConfig.blockSizeVertical*2.25,fontWeight: FontWeight.w600,textColor:
                                Colors.black),
                              ),
                              Container(
                                width: SizeConfig.blockSizeHorizontal*60,
                                child: texts("Product",fontSize: SizeConfig.blockSizeVertical*2,
                                    fontWeight: FontWeight.w500,textColor:
                                Colors.black54),
                              ),
                            ],
                          ),
                          SizedBox(width: SizeConfig.blockSizeHorizontal*3,),
                          Icon(Icons.edit,color: food_color_blue_gradient1,size: SizeConfig.blockSizeVertical*3,),
                          SizedBox(width: SizeConfig.blockSizeHorizontal*4,),
                          Icon(Icons.delete,color: redColorHome,size: SizeConfig.blockSizeVertical*3,),

                        ],),
                      ),
                    );
                  })),
              SizedBox(height: SizeConfig.blockSizeVertical*2.5,),
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