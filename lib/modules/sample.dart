import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/utils/SizeConfig.dart';
import 'package:flutter_softbook/modules/commonWidgets/background.dart';
import 'package:flutter_softbook/modules/commonWidgets/editWidget.dart';
import 'package:flutter_softbook/modules/forgotPassword/forgotPasswordView.dart';
import 'package:flutter_softbook/modules/home/homeCont.dart';
import 'package:flutter_softbook/modules/login/loginEmailCont.dart';
import 'package:flutter_softbook/modules/signup/signUpView.dart';
import 'package:get/get.dart';


class Home22Screen extends StatelessWidget {
  var controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> widgetList = [];
    var child =  Scaffold(
      body: Background(
        child: Container(
            child: Column(children: [

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