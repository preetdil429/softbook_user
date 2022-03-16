import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/constant/AppConstant.dart';
import 'package:flutter_softbook/modules/commonWidgets/editWidget.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';


import '../../main.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SizeConfig.dart';

Widget CustomText(String text,
    {var fontSize = textSizeLargeMedium,
    textColor = color_text_secondary,
    var fontFamily,
    var isCentered = false,
    var maxLine,
    var latterSpacing = 0.6,
    bool textAllCaps = false,
    var isLongText = false,
    bool lineThrough = false,
    bool isMandatory = false,
    FontWeight? fontWeight}) {
  return isMandatory
      ? RichText(
          text: TextSpan(
              text: textAllCaps ? text.toUpperCase() : text,
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                    fontSize: fontSize,
                    color: textColor,
                    height: 1.5,
                    fontWeight: fontWeight,
                    letterSpacing: latterSpacing,
                    decoration: lineThrough
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
              children: [
                TextSpan(
                    text: ' *',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: fontWeight,
                        fontSize: fontSize))
              ]),
          textAlign: isCentered ? TextAlign.center : TextAlign.start,
          maxLines: isLongText
              ? null
              : maxLine != null
                  ? maxLine
                  : null,
        )
      : Text(textAllCaps ? text.toUpperCase() : text,
          textAlign: isCentered ? TextAlign.center : TextAlign.start,
          maxLines: isLongText
              ? null
              : maxLine != null
                  ? maxLine
                  : null,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
                fontSize: fontSize,
                color: textColor,
                height: 1.5,
                fontWeight: fontWeight,
                letterSpacing: latterSpacing,
                decoration: lineThrough
                    ? TextDecoration.lineThrough
                    : TextDecoration.none),
          ));
}

void changeStatusColor(Color color) async {
  try {
    await FlutterStatusbarcolor.setStatusBarColor(color, animate: true);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(
        useWhiteForeground(color));
  } on Exception catch (e) {
    print(e);
  }
}

// Widget commonCacheImageWidget(
//     {double? width, BoxFit? fit, String? url, double? height}) {
//   if (isMobile) {
//     return CachedNetworkImage(
//       imageUrl: '$url',
//       height: height,
//       width: width,
//       fit: fit,
//     );
//   } else {
//     return Image.network(
//       url!,
//       height: height,
//       width: width,
//       fit: fit,
//     );
//   }
// }

Widget placeholderWidget() => CupertinoActivityIndicator(
      radius: 15,
    );

void showActionSheet(BuildContext context, String come, {String? url}) {
  showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text(
            "Select Option",
            style: secondaryTextStyle(),
          ),
          actions: [
            CupertinoActionSheetAction(
              onPressed: () {
                finish(context);
                /*   Navigator.of(context, rootNavigator: true)
                    .push(MaterialPageRoute(
                        builder: (BuildContext context) => DTContactScreen(
                              come: come,
                            ))).then((value) {

                       });*/
              },
              child: Text(
                  come == "share profile"
                      ? 'Share profile to contacts'
                      : "Share document to contacts",
                  style: primaryTextStyle(
                      size: (SizeConfig.blockSizeVertical * 2).toInt(),
                      color: Colors.red)),
              isDefaultAction: true,
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                finish(context);
                /*      Navigator.of(context, rootNavigator: false)
                    .push(MaterialPageRoute(
                        builder: (BuildContext context) => ShareDocument(
                              getUserData: getUserData,
                            come: "share profile"
                            )));*/
              },
              child: Text(
                  come == "share profile"
                      ? 'Share profile to new email'
                      : "Share document to new email",
                  style: primaryTextStyle(
                    size: (SizeConfig.blockSizeVertical * 2).toInt(),
                  )),
              isDefaultAction: true,
            ),
            come == "share profile"
                ? CupertinoActionSheetAction(
                    onPressed: () {
                      finish(context);
                      /* Navigator.of(context, rootNavigator: true)
                    .push(MaterialPageRoute(
                    builder: (BuildContext context) => SelectFolder(
                      come: "FolderProfile",
                    )))
                    .then((value) {

                });*/
                    },
                    child: Text('Share profile to Folder',
                        style: primaryTextStyle(
                          size: (SizeConfig.blockSizeVertical * 2).toInt(),
                        )),
                    isDefaultAction: true,
                  )
                : SizedBox(),
          ],
          cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                finish(context);
              },
              child: Text(
                'Cancel',
                style: primaryTextStyle(color: colorPrimaryDark, size: 18),
              )),
        );
      });

  void changeStatusColor(Color color) async {
    try {
      await FlutterStatusbarcolor.setStatusBarColor(color, animate: true);
      FlutterStatusbarcolor.setStatusBarWhiteForeground(
          useWhiteForeground(color));
    } on Exception catch (e) {
      print(e);
    }
  }
}

showAlertDialog(BuildContext context, String message, String type,
    {bool? isfeedback}) {
  // set up the buttons
  // set up the buttons;

  // set up the AlertDialog
  print(type);
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0))),
    contentPadding: EdgeInsets.zero,
    content: SingleChildScrollView(
      child: Container(
        width: Get.width / 2,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.0), topRight: Radius.circular(4.0)),
            child: Container(
              height: 60,
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 4.0),
              color: redColorHome,
              child: Center(
                child: TextClass(
                  textContent: 'Additional Funds Required',
                  fontWeight: FontWeight.w800,
                  fontSize: textSizeMedium,
                  textcolor: whiteColor,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            height: spacing / 2,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextClass(
                    textContent: message,
                    fontWeight: FontWeight.w600,
                    fontSize: textSizeMedium,
                    textcolor: Colors.black,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: spacing / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 10),
                child: Material(
                  color: colorPrimary,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      const Radius.circular(4.0),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 35,
                      width: SizeConfig.blockSizeHorizontal * 32,
                      child: Center(
                        child: Text(
                          "Add Funds",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: textSizeSMedium,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: spacing / 2,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 35,
              width: SizeConfig.blockSizeHorizontal * 32,
              child: Center(
                child: Text(
                  "Cancel",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: colorDarkGrey,
                        fontSize: textSizeSMedium,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: spacing / 2,
          ),
        ]),
      ),
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return WillPopScope(onWillPop: () async => false, child: alert);
    },
  );
}
showCommonAlertDialog(BuildContext context, String message, String type,Function onTap,
    {bool? isfeedback}) {
  // set up the buttons
  // set up the buttons;

  // set up the AlertDialog
  print(type);
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0))),
    contentPadding: EdgeInsets.zero,
    content: Container(
      height: 280,
      width: 50,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
          child: Container(
            height: 60,
            padding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 4.0),
            color: colorPrimary,
            child: Center(
                child: Image.asset("assets/popup_info.png",
                    height: 30, width: 30)),
          ),
        ),
        Container(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    message,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            )),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 10),
                child: Material(
                  color: colorPrimary,
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      const Radius.circular(8.0),
                    ),
                  ),
                  child: InkWell(
                    onTap: ()
                    {
                      onTap();
                    },
                    child: Container(
                      height: 35,
                      width: 80,
                      padding: EdgeInsets.only(top: 12),
                      child: Text(
                        "OK",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 10),
                child: Material(
                  color: colorPrimary,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      const Radius.circular(8.0),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 35,
                      width: 80,
                      padding: EdgeInsets.only(top: 12),
                      child: Text(
                        "CANCEL",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ]),
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return WillPopScope(onWillPop: () async => false, child: alert);
    },
  );
}
showAlertDialogApiErrors(
    context, int statusCode, String title, String message,) {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0))),
    contentPadding: EdgeInsets.zero,
    content: Container(
      height: 280,
      width: 50,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
          child: Container(
            height: 60,
            padding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 4.0),
            color: colorPrimary,
            child: Center(
                child: Image.asset("assets/popup_info.png",
                    height: 30, width: 30)),
          ),
        ),
        Container(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    message,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            )),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 10),
                child: Material(
                  color: colorPrimary,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      const Radius.circular(8.0),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                      if (statusCode == 201) {
                      }

                      /*if (message == "Token is not valid") {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                            (Route<dynamic> route) => false);
                      } else {
                        if (type == "Forgot") {
                          finish(context);
                        } else if (type == "Register") {
                          finish(context);
                        } else if (type == "Reset") {
                          finish(context);
                          finish(context);
                          finish(context);
                        }
                      }*/
                    },
                    child: Container(
                      height: 35,
                      width: 80,
                      padding: EdgeInsets.only(top: 12),
                      child: Text(
                        message == "Token" ? "LOGOUT" : "OK",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ]),
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return WillPopScope(onWillPop: () async => false, child: alert);
    },
  );
}

showCommonAlertDialogApiErrors(
    context, String title, String message,String type) {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0))),
    contentPadding: EdgeInsets.zero,
    content: Container(
      height: 200,
      width: 50,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
          child: Container(
            height: 60,
            padding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 4.0),
            color: colorPrimary,
            child: Center(
                child: Image.asset("assets/popup_info.png",
                    height: 30, width: 30)),
          ),
        ),
        Container(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    message,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            )),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 1),
                child: Material(
                  color: colorPrimary,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      const Radius.circular(8.0),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 35,
                      width: 80,
                      padding: EdgeInsets.only(top: 12),
                      child: Text(
                        message == "Token" ? "LOGOUT" : "OK",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ]),
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return WillPopScope(onWillPop: () async => false, child: alert);
    },
  );
}
Function(BuildContext, String) placeholderWidgetFn() =>
    (_, s) => placeholderWidget();
