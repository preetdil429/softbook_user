import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/utils/SizeConfig.dart';
import 'package:flutter_softbook/modules/commonWidgets/background.dart';
import 'package:flutter_softbook/modules/commonWidgets/editWidget.dart';
import 'package:flutter_softbook/modules/login/loginEmailCont.dart';
import 'package:flutter_softbook/modules/signup/signUpCont.dart';
import 'package:get/get.dart';


class SignUpScreen extends StatelessWidget {
  var controller = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: SizeConfig.blockSizeVertical*7,),
              GestureDetector(
                onTap: ()
                {
                  Get.back();
                },
                child: Container(
                  margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*4),
                  child: Icon(Icons.arrow_back,size: SizeConfig.blockSizeVertical*3.65,color: food_color_blue_gradient1,),),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical*10,),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*7),
                  child: texts("REGISTER", textColor:food_color_blue_gradient1,
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
                  hintText: "Name",
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
                  hintText: "Confirm Password",
                  isPassword: true,
                  validator: (s) {
                    if (s.trim().isEmpty)
                      return "This field is required";
                    return null;
                  },
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: RaisedButton(
                  onPressed: () {},
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
                      child: texts("REGISTER", textColor:Colors.white,
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
                    Get.back();
                  },
                  child: Container(
                      alignment: Alignment.centerRight,
                      child: texts("Already have an account?Signin", textColor:food_color_blue_gradient1,
                          fontWeight: FontWeight.w700,fontSize: SizeConfig.blockSizeVertical*1.75)
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}