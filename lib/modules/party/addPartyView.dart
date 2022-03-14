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
import 'package:flutter_softbook/modules/signup/signUpView.dart';
import 'package:get/get.dart';


class AddPartyScreen extends StatelessWidget {
  var controller = Get.put(AddPartyController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> widgetList = [];
    var child =  Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        title: texts("Add Party",fontSize: SizeConfig.blockSizeVertical*2.1,
            textColor: Colors.white,fontWeight: FontWeight.w600),
        leading: GestureDetector(onTap: ()
        {
          Get.back();
        },
          child: Icon(Icons.arrow_back,size: SizeConfig.blockSizeVertical*3,color: Colors.white,),
        ),
      ),
      body: SafeArea(
        top: true,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*4),
          height: SizeConfig.blockSizeVertical*100,
            child: SingleChildScrollView(
              child: Column(children: [
                  SizedBox(height: SizeConfig.blockSizeVertical*3,),
                texts("Type",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w700)
              ],),
            )
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