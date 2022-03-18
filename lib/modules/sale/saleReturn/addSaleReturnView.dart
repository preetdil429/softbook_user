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
import 'package:flutter_softbook/modules/sale/saleInvoice/addSaleInvoiceCont.dart';
import 'package:flutter_softbook/modules/sale/saleInvoice/saleInvoiceModel.dart';
import 'package:flutter_softbook/modules/signup/signUpView.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';



class AddSaleReturnScreen extends StatelessWidget {
  var controller = Get.put(AddSaleInvoiceController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> widgetList = [];
    var child =  Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        title: texts("Add Purchase Invoice",fontSize: SizeConfig.blockSizeVertical*2.5,
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
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
                  texts("Supplier Name",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                  FieldEditText(
                    textAlign: TextAlign.start,
                    mController: controller.name,
                    verticalPadding:SizeConfig.blockSizeHorizontal*3,
                    onSubmitted: (v) {
                      FocusScope.of(context)
                          .unfocus(
                      );
                    },
                    keyboardType: TextInputType.emailAddress,
                    isSecure: false,
                    hintText: "Full Name",
                    isPassword: false,
                    textInputAction: TextInputAction.next,
                    type: "username",
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
                  texts("Billing Address",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                  FieldEditText(
                    textAlign: TextAlign.start,
                    mController: controller.name,
                    verticalPadding:SizeConfig.blockSizeHorizontal*3,
                    onSubmitted: (v) {
                      FocusScope.of(context)
                          .unfocus(
                      );
                    },
                    keyboardType: TextInputType.emailAddress,
                    isSecure: false,
                    hintText: "Billing Address",
                    isPassword: false,
                    textInputAction: TextInputAction.next,
                    type: "username",
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
                  texts("Shipping Address",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                  FieldEditText(
                    textAlign: TextAlign.start,
                    mController: controller.name,
                    verticalPadding:SizeConfig.blockSizeHorizontal*3,
                    onSubmitted: (v) {
                      FocusScope.of(context)
                          .unfocus(
                      );
                    },
                    keyboardType: TextInputType.emailAddress,
                    isSecure: false,
                    hintText: "Shipping Address",
                    isPassword: false,
                    textInputAction: TextInputAction.next,
                    type: "username",
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
                  texts("Billing Name",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                  FieldEditText(
                    textAlign: TextAlign.start,
                    mController: controller.name,
                    verticalPadding:SizeConfig.blockSizeHorizontal*3,
                    onSubmitted: (v) {
                      FocusScope.of(context)
                          .unfocus(
                      );
                    },
                    keyboardType: TextInputType.emailAddress,
                    isSecure: false,
                    hintText: "Billing Name",
                    isPassword: false,
                    textInputAction: TextInputAction.next,
                    type: "username",
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("Phone Number",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      texts("Invoice Number",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal*41,
                        child: FieldEditText(
                          textAlign: TextAlign.start,
                          mController: controller.name,
                          verticalPadding:SizeConfig.blockSizeHorizontal*3,
                          onSubmitted: (v) {
                            FocusScope.of(context)
                                .unfocus(
                            );
                          },
                          keyboardType: TextInputType.emailAddress,
                          isSecure: false,
                          hintText: "Phone Number",
                          isPassword: false,
                          textInputAction: TextInputAction.next,
                          type: "username",
                        ),
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal*41,
                        child: FieldEditText(
                          textAlign: TextAlign.start,
                          mController: controller.name,
                          verticalPadding:SizeConfig.blockSizeHorizontal*3,
                          onSubmitted: (v) {
                            FocusScope.of(context)
                                .unfocus(
                            );
                          },
                          keyboardType: TextInputType.emailAddress,
                          isSecure: false,
                          hintText: "Invoice Number",
                          isPassword: false,
                          textInputAction: TextInputAction.next,
                          type: "username",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("PO. Number",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      texts("Date",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal*41,
                        child: FieldEditText(
                          textAlign: TextAlign.start,
                          mController: controller.name,
                          verticalPadding:SizeConfig.blockSizeHorizontal*3,
                          onSubmitted: (v) {
                            FocusScope.of(context)
                                .unfocus(
                            );
                          },
                          keyboardType: TextInputType.emailAddress,
                          isSecure: false,
                          hintText: "PO. Number",
                          isPassword: false,
                          textInputAction: TextInputAction.next,
                          type: "username",
                        ),
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal*41,
                        child: FieldEditText(
                          textAlign: TextAlign.start,
                          mController: controller.name,
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
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("Date",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      texts("Time",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal*41,
                        child: FieldEditText(
                          textAlign: TextAlign.start,
                          mController: controller.name,
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
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal*41,
                        child: FieldEditText(
                          textAlign: TextAlign.start,
                          mController: controller.name,
                          verticalPadding:SizeConfig.blockSizeHorizontal*3,
                          onSubmitted: (v) {
                            FocusScope.of(context)
                                .unfocus(
                            );
                          },
                          keyboardType: TextInputType.emailAddress,
                          isSecure: false,
                          hintText: "Time",
                          isPassword: false,
                          textInputAction: TextInputAction.next,
                          type: "username",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("Payment Terms",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      texts("Due Date",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal * 41,
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
                      Container(
                        width: SizeConfig.blockSizeHorizontal*41,
                        child: FieldEditText(
                          textAlign: TextAlign.start,
                          mController: controller.name,
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
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
                  texts("State of Supply",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
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
                  SizedBox(height: SizeConfig.blockSizeVertical*2.5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("Billed Items",fontSize: SizeConfig.blockSizeVertical*2.2,
                          textColor: Colors.black,fontWeight: FontWeight.w600),
                      /*GestureDetector(
                        onTap: ()
                        {
                         controller.itemList.add(AddSaleInvoiceModel(TextEditingController(), TextEditingController(),
                             TextEditingController(), TextEditingController(), TextEditingController(), '', ''));
                        },
                        child: texts("Add Item",fontSize: SizeConfig.blockSizeVertical*2,textColor: food_color_blue_gradient1,
                            fontWeight: FontWeight.w700),
                      ),*/

                    ],
                  ),

                  SizedBox(height: SizeConfig.blockSizeVertical*1,),
                  Obx(
                        ()=> ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.itemList.value.length,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index)
                        {
                          return Container(
                              width: SizeConfig.blockSizeHorizontal*95,
                              margin: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical*2),
                              padding:EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*2,vertical: SizeConfig.blockSizeVertical*0.5),
                              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.25),borderRadius: BorderRadius.circular(7.0),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  texts("${index+1}.",fontSize: SizeConfig.blockSizeVertical*1.9,
                                      fontWeight: FontWeight.w500,textColor:
                                      Colors.black),
                                  SizedBox(width: SizeConfig.blockSizeHorizontal*4,),
                                  Container(
                                    width: SizeConfig.blockSizeHorizontal*80,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            texts("Item1.",fontSize: SizeConfig.blockSizeVertical*2,
                                                fontWeight: FontWeight.w600,textColor:
                                                Colors.black),
                                            texts("₹180.0",fontSize: SizeConfig.blockSizeVertical*2,
                                                fontWeight: FontWeight.w600,textColor:
                                                Colors.black),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            texts("Subtotal.",fontSize: SizeConfig.blockSizeVertical*1.85,
                                                fontWeight: FontWeight.w500,textColor:
                                                Colors.black),
                                            texts("20 X ₹180.0 = ₹360.0",fontSize: SizeConfig.blockSizeVertical*1.85,
                                                fontWeight: FontWeight.w500,textColor:
                                                Colors.black),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            texts("Discount%.",fontSize: SizeConfig.blockSizeVertical*1.85,
                                                fontWeight: FontWeight.w500,textColor:
                                                iconColor),
                                            texts("20%",fontSize: SizeConfig.blockSizeVertical*1.85,
                                                fontWeight: FontWeight.w500,textColor:
                                                iconColor),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            texts("Discount(₹).",fontSize: SizeConfig.blockSizeVertical*1.85,
                                                fontWeight: FontWeight.w500,textColor:
                                                iconColor),
                                            texts("₹36",fontSize: SizeConfig.blockSizeVertical*1.85,
                                                fontWeight: FontWeight.w500,textColor:
                                                iconColor),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            texts("GST:12%",fontSize: SizeConfig.blockSizeVertical*1.85,
                                                fontWeight: FontWeight.w500,textColor:
                                                Colors.black),
                                            texts("₹22.4",fontSize: SizeConfig.blockSizeVertical*1.85,
                                                fontWeight: FontWeight.w500,textColor:
                                                Colors.black),
                                          ],
                                        ),
                                        SizedBox(height: SizeConfig.blockSizeVertical*1.5,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            texts("Amount",fontSize: SizeConfig.blockSizeVertical*2,
                                                fontWeight: FontWeight.w600,textColor:
                                                Colors.black),
                                            texts("₹360.25",fontSize: SizeConfig.blockSizeVertical*2,
                                                fontWeight: FontWeight.w600,textColor:
                                                Colors.black),
                                          ],
                                        ),
                                      ],),
                                  )

                                ],));
                        }),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("Items Total",fontSize: SizeConfig.blockSizeVertical*2.25,
                          fontWeight: FontWeight.w700,textColor:
                          Colors.black),
                      texts("₹22213.4",fontSize: SizeConfig.blockSizeVertical*2.25,
                          fontWeight: FontWeight.w600,textColor:
                          Colors.black),
                    ],),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),

                  Center(
                    child: GestureDetector(
                      onTap: ()
                      {
                        Get.to(()=>AddSaleReturnScreen());
                      },
                      child: Container(width: SizeConfig.blockSizeHorizontal*40,height: SizeConfig.blockSizeVertical*4.25,
                        decoration: BoxDecoration(color: mainColor,borderRadius: BorderRadius.circular(24.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add,color: Colors.white,size: SizeConfig.blockSizeVertical*2.5,),
                            SizedBox(width: SizeConfig.blockSizeHorizontal*2.75,),
                            texts("Add Item",fontSize: SizeConfig.blockSizeVertical*1.85,
                                fontWeight: FontWeight.w600,textColor:
                                Colors.white)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("Payment Type",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      texts("Payment Ref. No.",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                      Container(
                        width: SizeConfig.blockSizeHorizontal*41,
                        child: FieldEditText(
                          textAlign: TextAlign.start,
                          mController: controller.name,
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
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("Note",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      texts("Document",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal*41,
                        child: FieldEditText(
                          textAlign: TextAlign.start,
                          mController: controller.name,
                          verticalPadding:SizeConfig.blockSizeHorizontal*3,
                          onSubmitted: (v) {
                            FocusScope.of(context)
                                .unfocus(
                            );
                          },
                          keyboardType: TextInputType.emailAddress,
                          isSecure: false,
                          hintText: "Note",
                          isPassword: false,
                          textInputAction: TextInputAction.next,
                          type: "username",
                        ),
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal*41,
                        child: FieldEditText(
                          textAlign: TextAlign.start,
                          mController: controller.name,
                          verticalPadding:SizeConfig.blockSizeHorizontal*3,
                          onSubmitted: (v) {
                            FocusScope.of(context)
                                .unfocus(
                            );
                          },
                          keyboardType: TextInputType.emailAddress,
                          isSecure: false,
                          hintText: "Select Document",
                          isPassword: false,
                          textInputAction: TextInputAction.next,
                          type: "username",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("Received Amount",fontSize: SizeConfig.blockSizeVertical*2.2,
                          textColor: Colors.black,fontWeight: FontWeight.w600),
                      texts("Balance",fontSize: SizeConfig.blockSizeVertical*2.2,
                          textColor: Colors.black,fontWeight: FontWeight.w600),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*0.5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal*41,
                        child: FieldEditText(
                          textAlign: TextAlign.start,
                          mController: controller.name,
                          verticalPadding:SizeConfig.blockSizeHorizontal*3,
                          onSubmitted: (v) {
                            FocusScope.of(context)
                                .unfocus(
                            );
                          },
                          keyboardType: TextInputType.emailAddress,
                          isSecure: false,
                          hintText: "Received",
                          isPassword: false,
                          textInputAction: TextInputAction.next,
                          type: "username",
                        ),
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal*41,
                        child: FieldEditText(
                          textAlign: TextAlign.start,
                          mController: controller.name,
                          verticalPadding:SizeConfig.blockSizeHorizontal*3,
                          onSubmitted: (v) {
                            FocusScope.of(context)
                                .unfocus(
                            );
                          },
                          keyboardType: TextInputType.emailAddress,
                          isSecure: false,
                          hintText: "Balance",
                          isPassword: false,
                          textInputAction: TextInputAction.next,
                          type: "username",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*4,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("Additional Charge",fontSize: SizeConfig.blockSizeVertical*1.9,
                          fontWeight: FontWeight.w600,textColor:
                          Colors.black45),
                      texts("₹223.4",fontSize: SizeConfig.blockSizeVertical*1.9,
                          fontWeight: FontWeight.w600,textColor:
                          Colors.black45),
                    ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("Discount%.",fontSize: SizeConfig.blockSizeVertical*1.85,
                          fontWeight: FontWeight.w500,textColor:
                          iconColor),
                      texts("20%",fontSize: SizeConfig.blockSizeVertical*1.85,
                          fontWeight: FontWeight.w500,textColor:
                          iconColor),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("Discount(₹).",fontSize: SizeConfig.blockSizeVertical*1.85,
                          fontWeight: FontWeight.w500,textColor:
                          iconColor),
                      texts("₹480",fontSize: SizeConfig.blockSizeVertical*1.85,
                          fontWeight: FontWeight.w500,textColor:
                          iconColor),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("Total",fontSize: SizeConfig.blockSizeVertical*2.45,
                          fontWeight: FontWeight.w700,textColor:
                          Colors.black),
                      texts("₹22213.4",fontSize: SizeConfig.blockSizeVertical*2.25,
                          fontWeight: FontWeight.w600,textColor:
                          Colors.black),
                    ],),
                  SizedBox(height: SizeConfig.blockSizeVertical*8,),
                  Center(
                    child: Button(
                      width: SizeConfig.blockSizeHorizontal*45,
                      height: SizeConfig.blockSizeVertical*5.5,
                      textContent: 'Submit',
                      buttontextColor: Colors.white,
                      buttonBg: mainColor,
                      radius: 80,
                      onPressed: ()
                      {
                        Get.back();
                      },
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
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