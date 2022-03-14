
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/constant/AppImages.dart';
import 'package:flutter_softbook/extras/utils/SizeConfig.dart';
import 'package:flutter_softbook/modules/splashScreen/splashCont.dart';
import 'package:get/get.dart';


class SplashScreen extends StatelessWidget
{
  var splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context)
  {
    // TODO: implement build
    return Scaffold(
        body: SafeArea(
          child:Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration( color: colorPrimary,),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                
              ],)
            ,),
        ));
  }
}