import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/utils/SizeConfig.dart';
import 'package:flutter_softbook/modules/commonWidgets/background.dart';
import 'package:flutter_softbook/modules/commonWidgets/editWidget.dart';
import 'package:flutter_softbook/modules/forgotPassword/forgotPasswordView.dart';
import 'package:flutter_softbook/modules/home/homeView.dart';
import 'package:flutter_softbook/modules/login/loginEmailCont.dart';
import 'package:flutter_softbook/modules/signup/signUpView.dart';
import 'package:get/get.dart';


class LoginEmailScreen extends StatelessWidget {
  var controller = Get.put(LoginEmailController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Background(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*7),
                child: texts("LOGIN", textColor:food_color_blue_gradient1,
                    fontWeight: FontWeight.w700,fontSize: SizeConfig.blockSizeVertical*3.75)
              ),
              SizedBox(height: size.height * 0.03),

              Container(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*7),
                child: EditText(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.text,
                   verticalPadding: 4.0,
                //  focusNode: _controller.focusPassword,
                  mController:TextEditingController(),
                  onSubmitted: (v) {
                  },
                  isSecure: true,
                  hintText: "Email Address",
                  isPassword: true,
                  validator: (s) {
                    if (s.trim().isEmpty)
                      return "This field is required";
                    return null;
                  },
                ),
              ),

              SizedBox(height: size.height * 0.03),

              Container(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*7),
                child: EditText(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.text,
                  verticalPadding: 4.0,
                  //  focusNode: _controller.focusPassword,
                  mController:TextEditingController(),
                  onSubmitted: (v) {
                  },
                  isSecure: true,
                  hintText: "Password",
                  isPassword: true,
                  validator: (s) {
                    if (s.trim().isEmpty)
                      return "This field is required";
                    return null;
                  },
                ),
              ),

              GestureDetector(
                onTap: ()
                {
                  Get.to(()=>ForgotScreen());
                },
                child: Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: texts("Forgot Password?", textColor:food_color_blue_gradient1,
                      fontWeight: FontWeight.w700,fontSize: SizeConfig.blockSizeVertical*1.75)
                ),
              ),

              SizedBox(height: size.height * 0.05),

              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: RaisedButton(
                  onPressed: () {

                    Get.to(()=>HomeScreen());
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient: new LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 136, 34),
                          Color.fromARGB(255, 255, 177, 41)
                        ]
                      )
                    ),
                    padding: const EdgeInsets.all(0),
                    child: texts("LOGIN", textColor:Colors.white,
                        fontWeight: FontWeight.w700,fontSize: SizeConfig.blockSizeVertical*1.75)
                  ),
                ),
              ),

              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: GestureDetector(
                  onTap: ()
                  {
                   Get.to(()=> SignUpScreen());
                  },
                  child: Container(
                      alignment: Alignment.centerRight,
                      child: texts("Don't have an account?Signup", textColor:food_color_blue_gradient1,
                          fontWeight: FontWeight.w700,fontSize: SizeConfig.blockSizeVertical*1.75)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}