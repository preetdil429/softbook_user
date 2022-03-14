//Universal usage

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

Locale locale = Localizations.localeOf(Get.context!);
var format = NumberFormat.simpleCurrency(locale: locale.toString());
String currency = format.currencySymbol;
//String currency = '\u{20A6}';
const appName = "ELink";
const affiliate_order = "Affiliate Order Entry";
const email = "Email";
const pwd = "Password";
const login = "Login";
const terms = "By continuing, you agree to be bound by EarthLink LLC Terms and Conditions which can be found at";



/////Error Message////


var errorThisFieldRequired = 'This field is required';
var imageDummyUrl = 'https://www.kindpng.com/picc/m/252-2524695_dummy-profile-image-jpg-hd-png-download.png';

var imageBaseUrl = "http://api.trinbxinfotech.in/";
const signup = "Sign up";
const verifyOTP = "Verifying OTP";
const getControl = "Get Control of your business";





