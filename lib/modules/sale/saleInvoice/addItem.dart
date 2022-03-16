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


class AddSaleItemScreen extends StatelessWidget {
  var controller = Get.put(AddSaleInvoiceController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> widgetList = [];
    var child =  Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        title: texts("Add Item to Invoice",fontSize: SizeConfig.blockSizeVertical*2.5,
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
                texts("Item Name",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
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
                  hintText: "Item Name",
                  isPassword: false,
                  textInputAction: TextInputAction.next,
                  type: "username",
                ),

                SizedBox(height: SizeConfig.blockSizeVertical*2,),
                texts("Quantity",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
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
                  hintText: "Quantity",
                  isPassword: false,
                  textInputAction: TextInputAction.next,
                  type: "username",
                ),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
                  texts("Price/Unit",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
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
                    hintText: "Price",
                    isPassword: false,
                    textInputAction: TextInputAction.next,
                    type: "username",
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
                  texts("Unit",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
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
                    hintText: "Unit",
                    isPassword: false,
                    textInputAction: TextInputAction.next,
                    type: "username",
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("Discount%",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      texts("GST",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),

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
                          hintText: "Discount",
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
                          hintText: "Discount",
                          isPassword: false,
                          textInputAction: TextInputAction.next,
                          type: "username",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("Discount",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      texts("₹180.0",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black54,fontWeight: FontWeight.w600),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      texts("Amount",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black,fontWeight: FontWeight.w600),
                      texts("₹1800.0",fontSize: SizeConfig.blockSizeVertical*2.2,textColor: Colors.black54,fontWeight: FontWeight.w600),

                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*8,),
                  Center(
                    child: Button(
                      width: SizeConfig.blockSizeHorizontal*45,
                      height: SizeConfig.blockSizeVertical*5.5,
                      textContent: 'Save',
                      buttontextColor: Colors.white,
                      buttonBg: mainColor,
                      radius: 80,
                      onPressed: ()
                      {
                        Get.back();
                      },
                    ),
                  )
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