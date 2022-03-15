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
import 'package:google_fonts/google_fonts.dart';


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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: SizeConfig.blockSizeVertical*3,),
                texts("Type",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w700),
                Container(
                  width: SizeConfig.blockSizeHorizontal * 90,
                  margin:
                  EdgeInsets.only(top: SizeConfig.blockSizeVertical * 0.75),
                  child: GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      controller.mCornerWinnignBottomSheet(context, controller.typeList,'');
                    },
                    child: AbsorbPointer(
                      child: TextFormField(
                        scrollPadding: EdgeInsets.only(
                            bottom: SizeConfig.blockSizeVertical * 7),
                        controller: controller.selectionCont.value,
                        style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig.blockSizeVertical * 2,
                                color: Colors.black)),
                        cursorColor:
                        Colors.black,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.black,
                          ),
                          labelText: "Select Type",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.blockSizeHorizontal * 4,
                              vertical: SizeConfig.blockSizeVertical * 0.5),
                          isDense: true,
                          labelStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: SizeConfig.blockSizeVertical * 1.9,
                                  color: Colors.black54)),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(color: mainColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(color: mainColor)),
                        ),
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ),
                ),
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