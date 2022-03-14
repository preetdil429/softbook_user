
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/constant/AppImages.dart';
import 'package:flutter_softbook/extras/constant/StringConstant.dart';
import 'package:flutter_softbook/extras/utils/SizeConfig.dart';
import 'package:flutter_softbook/modules/commonWidgets/editWidget.dart';
import 'package:flutter_softbook/modules/login/loginController.dart';
import 'package:flutter_softbook/modules/login/otpScreen.dart';
import 'package:flutter_softbook/modules/splashScreen/splashCont.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'package:get/get.dart';


class LoginView extends StatelessWidget
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
                texts(signup,fontSize: SizeConfig.blockSizeVertical*2.85,fontWeight:
                FontWeight.w700,textColor: Colors.black),
                texts(getControl,fontSize: SizeConfig.blockSizeVertical*2,fontWeight:
                FontWeight.w500,textColor: Colors.black54),
                SizedBox(height: SizeConfig.blockSizeVertical*6,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 1.25),
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  width: MediaQuery.of(context)
                      .size
                      .width *
                      0.9,
                  child:  InternationalPhoneNumberInput(
                    textFieldController: TextEditingController(),
                    textStyle: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        fontSize: SizeConfig.blockSizeVertical * 2,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    selectorTextStyle: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        fontSize: SizeConfig.blockSizeVertical * 2,
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    autoFocusSearch: false,
                    keyboardType:
                    TextInputType.numberWithOptions(signed: false, decimal: false),
                    inputBorder: InputBorder.none,
                    maxLength: 11,
                    inputDecoration: InputDecoration(
                      border: InputBorder.none,
                      disabledBorder:InputBorder.none,
                      enabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.all(2.0),
                      errorBorder: InputBorder.none,
                      focusedBorder:InputBorder.none,
                      focusedErrorBorder:InputBorder.none,
                      labelText: '',isDense: true,
                      labelStyle: GoogleFonts.raleway(textStyle:TextStyle(color: color_fb_bg)),
                      hintText: 'Phone Number',
                    ),
                    validator: (s) {
                      if (s!.trim()
                          .isEmpty) return errorThisFieldRequired;
                      return null;
                    }, onInputChanged: (PhoneNumber value) {

                  },
                  ),
                ),
                texts("Join a compaany shared with you",fontSize: SizeConfig.blockSizeVertical*2,fontWeight:
                FontWeight.w500,textColor: Colors.black54),
                SizedBox(height: SizeConfig.blockSizeVertical*13,),
                Button(textContent: "Get OTP", onPressed: ()
                {
                  Get.to(()=>OTPView());
                },
                radius: 24.0,height: SizeConfig.blockSizeVertical*5.5,
                  buttontextColor: Colors.white,buttonBg: food_color_blue_gradient1,
                ),
                SizedBox(height: SizeConfig.blockSizeVertical*3,),
                Center(
                  child: texts("Or",fontSize: SizeConfig.blockSizeVertical*2,fontWeight:
                  FontWeight.w500,textColor: Colors.black87),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical*3,),
                Container(
                  width: SizeConfig.blockSizeHorizontal*100,
                  height: SizeConfig.blockSizeVertical*6,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(24.0),
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2.0,
                      ),]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(google,width: SizeConfig.blockSizeHorizontal*10,height: SizeConfig.blockSizeVertical*3.5,),
                    SizedBox(width: SizeConfig.blockSizeHorizontal*1,),
                    texts("Sign In with Google",fontSize: SizeConfig.blockSizeVertical*2,fontWeight:
                    FontWeight.w500,textColor: Colors.black87)
                  ],),
                ),
                Spacer(),
                Center(
                  child: texts("By Continuing , I agree to terms and conditions",
                      fontSize: SizeConfig.blockSizeVertical*1.65,fontWeight:
                  FontWeight.w500,textColor: Colors.black.withOpacity(0.7)),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical*0.5,)
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