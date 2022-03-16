import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/utils/SizeConfig.dart';
import 'package:flutter_softbook/modules/commonWidgets/background.dart';
import 'package:flutter_softbook/modules/commonWidgets/editWidget.dart';
import 'package:flutter_softbook/modules/forgotPassword/forgotPasswordView.dart';
import 'package:flutter_softbook/modules/home/drawer.dart';
import 'package:flutter_softbook/modules/home/homeCont.dart';
import 'package:flutter_softbook/modules/item/itemController.dart';
import 'package:flutter_softbook/modules/item/productController.dart';
import 'package:flutter_softbook/modules/login/loginEmailCont.dart';
import 'package:flutter_softbook/modules/party/addPartyController.dart';
import 'package:flutter_softbook/modules/party/addPartyView.dart';
import 'package:flutter_softbook/modules/party/partyController.dart';
import 'package:flutter_softbook/modules/party/partyTransactions.dart';
import 'package:flutter_softbook/modules/signup/signUpView.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class  ItemProductScreen extends StatelessWidget {
  var controller = Get.put(ItemProductController());
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

        title: texts("PRODUCT",fontSize: SizeConfig.blockSizeVertical*2.5,
            textColor: Colors.white,fontWeight: FontWeight.w600),
      ),

      body: SafeArea(
        top: true,
        child: Container(
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: SizeConfig.blockSizeVertical*4,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*3,vertical: SizeConfig.blockSizeVertical*1),
                  padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*3,vertical: SizeConfig.blockSizeVertical*1),
                  decoration: BoxDecoration(
                    color: Colors.white,borderRadius: BorderRadius.circular(10.0),
                   boxShadow: [
                     BoxShadow(color: Colors.black26,blurRadius: 2.0)
                   ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                      Center(
                        child: texts("General Details",fontSize: SizeConfig.blockSizeVertical*2.5,
                            textColor: mainColor,fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical*2,),
                    texts("Item Name",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                    SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                    FieldEditText(
                      textAlign: TextAlign.start,
                      mController: TextEditingController(),
                      verticalPadding:SizeConfig.blockSizeHorizontal*3,
                      onSubmitted: (v) {
                        FocusScope.of(context)
                            .unfocus(
                        );
                      },
                      keyboardType: TextInputType.emailAddress,
                      isSecure: false,
                      hintText: "Item Name",
                      isPassword: false,
                      textInputAction: TextInputAction.next,
                      type: "username",
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical*1.5,),
                      texts("Item Code",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                      FieldEditText(
                        textAlign: TextAlign.start,
                        mController: TextEditingController(),
                        verticalPadding:SizeConfig.blockSizeHorizontal*3,
                        onSubmitted: (v) {
                          FocusScope.of(context)
                              .unfocus(
                          );
                        },
                        keyboardType: TextInputType.emailAddress,
                        isSecure: false,
                        hintText: "Item Code",
                        isPassword: false,
                        textInputAction: TextInputAction.next,
                        type: "username",
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical*1.5,),
                      texts("Item Description",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                      Container(
                        child: FieldEditText(
                          textAlign: TextAlign.start,
                          mController: TextEditingController(),
                          verticalPadding:SizeConfig.blockSizeHorizontal*3,
                          onSubmitted: (v) {
                            FocusScope.of(context)
                                .unfocus(
                            );
                          },
                          keyboardType: TextInputType.emailAddress,
                          isSecure: false,
                          hintText: "Item Description",
                          isPassword: false,
                          type: "username",
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical*1.5,),
                  ],),),
                SizedBox(height: SizeConfig.blockSizeVertical*2,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*3,vertical: SizeConfig.blockSizeVertical*1),
                  padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*3,vertical: SizeConfig.blockSizeVertical*1),
                  decoration: BoxDecoration(
                      color: Colors.white,borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(color: Colors.black26,blurRadius: 2.0)
                      ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                      Center(
                        child: texts("Stock Details",fontSize: SizeConfig.blockSizeVertical*2.5,
                            textColor: mainColor,fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical*2,),
                      texts("Unit",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                      Container(
                        width: SizeConfig.blockSizeHorizontal * 95,
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
                                labelText: "Select Unit",
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

                      SizedBox(height: SizeConfig.blockSizeVertical*2,),
                      texts("Opening Stock",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                      FieldEditText(
                        textAlign: TextAlign.start,
                        mController: TextEditingController(),
                        verticalPadding:SizeConfig.blockSizeHorizontal*3,
                        onSubmitted: (v) {
                          FocusScope.of(context)
                              .unfocus(
                          );
                        },
                        keyboardType: TextInputType.emailAddress,
                        isSecure: false,
                        hintText: "Opening Stock",
                        isPassword: false,
                        textInputAction: TextInputAction.next,
                        type: "username",
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical*1.5,),
                      texts("Date",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                      FieldEditText(
                        textAlign: TextAlign.start,
                        mController: TextEditingController(),
                        verticalPadding:SizeConfig.blockSizeHorizontal*3,
                        onSubmitted: (v) {
                          FocusScope.of(context)
                              .unfocus(
                          );
                        },
                        keyboardType: TextInputType.emailAddress,
                        isSecure: false,
                        hintText: "Date",
                        isPassword: false,
                        textInputAction: TextInputAction.next,
                        type: "username",
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical*1.5,),
                    ],),),
                SizedBox(height: SizeConfig.blockSizeVertical*2,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*3,vertical: SizeConfig.blockSizeVertical*1),
                  padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*3,vertical: SizeConfig.blockSizeVertical*1),
                  decoration: BoxDecoration(
                      color: Colors.white,borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(color: Colors.black26,blurRadius: 2.0)
                      ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                      Center(
                        child: texts("Pricing Details",fontSize: SizeConfig.blockSizeVertical*2.5,
                            textColor: mainColor,fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical*2,),
                      texts("Purchase Price",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width:SizeConfig.blockSizeHorizontal*41,
                            child: FieldEditText(
                              textAlign: TextAlign.start,
                              mController: TextEditingController(),
                              verticalPadding:SizeConfig.blockSizeHorizontal*3,
                              onSubmitted: (v) {
                                FocusScope.of(context)
                                    .unfocus(
                                );
                              },
                              keyboardType: TextInputType.emailAddress,
                              isSecure: false,
                              hintText: "Price",
                              isPassword: false,
                              textInputAction: TextInputAction.next,
                              type: "username",
                            ),
                          ),
                          Container(
                            width: SizeConfig.blockSizeHorizontal * 41,
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
                                    labelText: "Select Unit",
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
                        ],
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical*2,),
                      texts("Sale Price",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width:SizeConfig.blockSizeHorizontal*41,
                            child: FieldEditText(
                              textAlign: TextAlign.start,
                              mController: TextEditingController(),
                              verticalPadding:SizeConfig.blockSizeHorizontal*3,
                              onSubmitted: (v) {
                                FocusScope.of(context)
                                    .unfocus(
                                );
                              },
                              keyboardType: TextInputType.emailAddress,
                              isSecure: false,
                              hintText: "Price",
                              isPassword: false,
                              textInputAction: TextInputAction.next,
                              type: "username",
                            ),
                          ),
                          Container(
                            width: SizeConfig.blockSizeHorizontal * 41,
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
                                    labelText: "Select Unit",
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
                        ],
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical*2,),
                      texts("Margin (In percentage)",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                      FieldEditText(
                        textAlign: TextAlign.start,
                        mController: TextEditingController(),
                        verticalPadding:SizeConfig.blockSizeHorizontal*3,
                        onSubmitted: (v) {
                          FocusScope.of(context)
                              .unfocus(
                          );
                        },
                        keyboardType: TextInputType.emailAddress,
                        isSecure: false,
                        hintText: "Margin",
                        isPassword: false,
                        textInputAction: TextInputAction.next,
                        type: "username",
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical*1.5,),
                      texts("HSN Code",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                      Container(
                        width: SizeConfig.blockSizeHorizontal * 95,
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
                                labelText: "Select Code",
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
                      SizedBox(height: SizeConfig.blockSizeVertical*2,),
                      texts("GST Tax Rate",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                      Container(
                        width: SizeConfig.blockSizeHorizontal * 95,
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
                                labelText: "Select Tax Rate",
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

                    ],),),
                SizedBox(height: SizeConfig.blockSizeVertical*6,),
                Button(
                  textContent: "Submit",
                  width: SizeConfig.blockSizeHorizontal*50,
                  buttontextColor: Colors.white,buttonBg: mainColor,
                  radius: 24.0,height: SizeConfig.blockSizeVertical*5.5,
                  onPressed: () {

                  },
                ),
                SizedBox(height: SizeConfig.blockSizeVertical*3,),
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