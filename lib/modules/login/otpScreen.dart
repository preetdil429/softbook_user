
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/constant/AppImages.dart';
import 'package:flutter_softbook/extras/constant/StringConstant.dart';
import 'package:flutter_softbook/extras/utils/SizeConfig.dart';
import 'package:flutter_softbook/modules/commonWidgets/editWidget.dart';
import 'package:flutter_softbook/modules/login/loginController.dart';
import 'package:flutter_softbook/modules/splashScreen/splashCont.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'package:get/get.dart';


class  OTPView extends StatelessWidget
{
  var loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context)
  {
    // TODO: implement build
    List<Widget> widgetList = [];
    var child = Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          maintainBottomViewPadding: true,
          child:Container(
            height: Get.height,
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: SizeConfig.blockSizeVertical*6,),
                texts(verifyOTP,fontSize: SizeConfig.blockSizeVertical*2.85,fontWeight:
                FontWeight.w700,textColor: Colors.black),
                texts("OTP Sent to +9198XXXXXX",fontSize: SizeConfig.blockSizeVertical*2,fontWeight:
                FontWeight.w500,textColor: Colors.black54,childText: "  Change?",childTextColor: Colors.lightBlue),
                SizedBox(height: SizeConfig.blockSizeVertical*8,),
                EditText(
                  hintText: 'Enter OTP Code',
                  verticalPadding: SizeConfig.blockSizeHorizontal*2,
                  onSubmitted: ()
                  {

                  },
                  mController: TextEditingController(),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical*2,),
                texts("Resend code in 42 sec",fontSize: SizeConfig.blockSizeVertical*1.9,fontWeight:
                FontWeight.w500,textColor: Colors.black54,),
                Spacer(),
                Button(textContent: "Submit", onPressed: ()
                {
                  Get.to(()=>OTPView());
                },
                  radius: 24.0,height: SizeConfig.blockSizeVertical*5.5,
                  buttontextColor: Colors.white,buttonBg: food_color_blue_gradient1,
                ),
                SizedBox(height: SizeConfig.blockSizeVertical*2,),
              ],)
            ,),
        ));
    widgetList.add(child);
    final modal = Obx(
          () => loginController.showLoader.value
          ? Stack(
        children: [
          new Opacity(
            opacity: 0.4,
            child: ModalBarrier(dismissible: false, color: Colors.grey),
          ),
          new Center(
            child: new CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation<Color>(splashColor),
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