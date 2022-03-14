import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class PartyController extends GetxController {

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


  @override
  void onInit()
  {
    // TODO: implement onInit
    super.onInit();
    setTheme();
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
}