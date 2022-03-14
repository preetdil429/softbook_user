import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/constant/StringConstant.dart';
import 'package:flutter_softbook/modules/login/loginController.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart' as input;
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'SizeConfig.dart';



class CountryCodePicker extends StatelessWidget {

  Function ?onValueChange;
  var controller;
  var dialCode;
  var isoCode;
  var loginController = Get.put(LoginController());


  CountryCodePicker({Key? key, this.onValueChange, this.controller, this.dialCode, this.isoCode}) : super(key: key);

  @override
  Widget build(BuildContext contextC) {

    return InternationalPhoneNumberInput(
      textFieldController: controller,
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
      selectorConfig: input.SelectorConfig(
        selectorType: input.PhoneInputSelectorType.DIALOG,
        useEmoji: true,
      ),
      keyboardType:
      TextInputType.numberWithOptions(signed: false, decimal: false),
      inputBorder: InputBorder.none,
      maxLength: 11,
      inputDecoration: InputDecoration(
        border: UnderlineInputBorder(
            borderSide: BorderSide(
                color: color_fb_bg
            )
        ),
        disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: color_fb_bg
            )
        ),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: color_fb_bg
            )
        ),
        errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: color_fb_bg
            )
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: color_fb_bg
            )
        ),
        focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: color_fb_bg
            )
        ),
        labelText: 'Phone',
        labelStyle: TextStyle(color: color_fb_bg),
        hintText: 'Phone Number',
      ),
      onInputChanged: (input.PhoneNumber valueC) {
        controller = valueC.parseNumber();
        dialCode = valueC.dialCode;
        var getDialCode = dialCode.toString().split("+");
        loginController.phoneNumber.value = getDialCode[1].toString();
        loginController.phoneNumber.refresh();
      },
      validator: (s) {
        if (s!.trim()
            .isEmpty) return errorThisFieldRequired;
        return null;
      },
    );
  }
}
