import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/utils/SizeConfig.dart';
import 'package:flutter_softbook/modules/sale/saleInvoice/saleInvoiceModel.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';


class AddSaleInvoiceController extends GetxController {

  var showLoader = false.obs;
  var isPassword = false.obs;
  var phone = TextEditingController().obs;
  var otpController = TextEditingController().obs;
  String verificationId = "";
  var formKey = GlobalKey<FormState>();
  var phoneNumber = ''.obs;
  var isoCode = "IN".obs;
  var otpCode = "";
  var selectedCountry = TextEditingController().obs;
  final storage = GetStorage();
  var selectionCont= new TextEditingController().obs;
  var typeList =["Unregistered",
    "Register - Regular"];

  var name = TextEditingController();
  var phoneNum = TextEditingController();
  var billingAddress = TextEditingController();
  var email = TextEditingController();
  var itemList = <AddSaleInvoiceModel>[].obs;


  @override
  void onInit()
  {
    // TODO: implement onInit
    super.onInit();
    setTheme();
    itemList.add(AddSaleInvoiceModel(TextEditingController(), TextEditingController(),
        TextEditingController(), TextEditingController(), TextEditingController(), '', ''));
    itemList.add(AddSaleInvoiceModel(TextEditingController(), TextEditingController(),
        TextEditingController(), TextEditingController(), TextEditingController(), '', ''));
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  setTheme()
  {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark
    ));
  }

  loginUser()
  {

  }
  mCornerWinnignBottomSheet(BuildContext aContext, List businesstypes,String type)
  {
    showModalBottomSheet(
        context: aContext,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
        ),
        builder: (builder)
        {
          return Container(
            height: SizeConfig.blockSizeVertical * 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25)),
                    ),
                    width: double.infinity,
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        SizedBox(height: SizeConfig.blockSizeVertical * 2.5,),
                        Center(
                          child: Text(
                            "Select Status",
                            textAlign: TextAlign.center,
                            style:GoogleFonts.raleway(
                                fontSize: SizeConfig.blockSizeVertical * 2,
                                color: Colors.white),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(aContext);
                          },
                          child: Container(
                            child: Icon(
                              Icons.cancel_outlined,
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal*4),
                          ),
                        )
                      ],
                    )),
                Container(
                  height: SizeConfig.blockSizeVertical * 20,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                          children: [
                            SizedBox(height: SizeConfig.blockSizeVertical * 4,),
                            GestureDetector(
                                child: Container(
                                    child: Text(businesstypes[index],
                                      style: new TextStyle(fontSize: SizeConfig
                                          .blockSizeVertical * 2,
                                          color: Colors.black),)),
                                onTap: () {
                                  FocusScope.of(context).unfocus();

                                }),

                            Divider(
                                height: 5,
                                color: Colors.black38.withOpacity(0.5)),
                          ]);
                    },
                    itemCount: businesstypes.length,
                  ),
                ),
              ],
            ),
          );
        });

  }
}