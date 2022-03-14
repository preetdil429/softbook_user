import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/constant/AppConstant.dart';
import 'package:flutter_softbook/extras/utils/SizeConfig.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';



import '../../../main.dart';

class EditText extends StatefulWidget {
  var isPassword;
  var isSecure;
  var fontSize;
  var textColor;
  var fontFamily;
  var maxLine = 1;
  var minLine = 1;
  Function? validator;
  TextEditingController? mController;
  TextInputType? keyboardType;
  VoidCallback? onPressed;
  var hintText;
  var labelText;
  Function? onSubmitted;
  TextInputAction? textInputAction;
  List<TextInputFormatter>? inputFormatter;
  FocusNode? focusNode;
  String? type;
  TextAlign? textAlign;
  String? labelInfo;
  String? icon;
  bool? localIcon = false;
  Color? hintColor;
  IconData? staticIcon;
  double? verticalPadding;
  Widget? suffix;
  Widget? prefix;

  EditText(
      {var this.fontSize = textSizeMedium,
      var this.textColor = color_text_secondary,
      var this.fontFamily = fontRegular,
      var this.isPassword = true,
      var this.isSecure = false,
      var this.mController,
      var this.maxLine = 1,
      var this.minLine = 1,
      this.validator,
      this.keyboardType,
      this.hintText,this.hintColor,this.prefix,this.suffix,
      this.labelText,
      this.textInputAction,
      this.inputFormatter,
      this.focusNode,
      this.type,
      this.onSubmitted,this.verticalPadding,
      this.textAlign = TextAlign.start,
      this.labelInfo,
      this.icon,
      this.localIcon,
      this.staticIcon});

  @override
  State<StatefulWidget> createState() {
    return EditTextState();
  }
}

class EditTextState extends State<EditText> {
  @override
  Widget build(BuildContext context) {
      return TextFormField(
        style: GoogleFonts.raleway(textStyle:TextStyle(
            fontSize: SizeConfig.blockSizeVertical*2.1,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            color: widget.hintColor)),
        obscureText: widget.isPassword,
        controller: widget.mController,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        inputFormatters: widget.inputFormatter,
        focusNode: widget.focusNode,
        textAlign: widget.textAlign!,
        minLines: widget.minLine,
        onFieldSubmitted: (value)
        {
          widget.onSubmitted!();
        },
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          hintText: widget.hintText,contentPadding: EdgeInsets.only(top: widget.verticalPadding!,left: widget.verticalPadding!),
          alignLabelWithHint: false,
          isDense: false,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: GoogleFonts.raleway(fontStyle: FontStyle.normal,textStyle:TextStyle(
              fontSize: SizeConfig.blockSizeVertical*1.85,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              color: widget.hintColor),),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.blue,
                width: 1.5),
          ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: loginText),
    ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.blue,
                width: 1.5),
        ),
          prefixIcon: widget.prefix,
          suffixIcon: widget.suffix,
        ),
        validator: (value)
        {
          widget.validator;
        },
      );

  }

  @override
  State<StatefulWidget>? createState() {
    return null;
  }
}

class AppButton extends StatefulWidget {
  var textContent;
  VoidCallback? onPressed;

  AppButton({@required this.textContent, @required this.onPressed});

  @override
  State<StatefulWidget> createState() {
    return AppButtonState();
  }
}

class AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: widget.onPressed,
        textColor: colorPrimary,
        elevation: 4,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: const EdgeInsets.all(0.0),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: <Color>[colorGradientStart, colorPrimary]),
            borderRadius: BorderRadius.all(Radius.circular(80.0)),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
              child: Text(
                widget.textContent,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ));
  }

  @override
  State<StatefulWidget>? createState() {
    // TODO: implement createState
    return null;
  }
}

class TextClass extends StatefulWidget {
  var textContent;
  FontWeight? fontWeight;
  double? fontSize;
  Color? textcolor;
  String? coming;
  FontStyle? style;
  TextDecoration? decoration;
  TextAlign? textAlign = TextAlign.center;

  TextClass(
      {@required this.textContent,
      this.fontWeight,
      this.fontSize,
      this.textcolor,
      this.coming,this.style,this.decoration,
      this.textAlign = TextAlign.center});

  @override
  State<StatefulWidget> createState() {
    return TextBoxState();
  }
}

class TextBoxState extends State<TextClass> {
  @override
  Widget build(BuildContext context) {

    return RichText(
      text: TextSpan(text : widget.textContent,style:widget.coming != null
          ? TextStyle(
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,decoration:widget.decoration!=null?widget.decoration:null ,
            color:
            widget.textcolor != null ? widget.textcolor : colorDarkGrey,fontStyle: widget.style!=null?widget.style:FontStyle.normal
          )
          :  TextStyle(
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,decoration:widget.decoration!=null?widget.decoration:null ,
            color:
            widget.textcolor != null ? widget.textcolor : colorDarkGrey,fontStyle: widget.style!=null?widget.style:FontStyle.normal
          )),
      textAlign: widget.textAlign!,
    );

  }
}

class TextClassItalics extends StatefulWidget {
  var textContent;
  FontWeight? fontWeight;
  double? fontSize;
  Color? textcolor;
  String? coming;
  TextAlign? textAlign = TextAlign.center;

  TextClassItalics(
      {@required this.textContent,
      this.fontWeight,
      this.fontSize,
      this.textcolor,
      this.coming,
      this.textAlign = TextAlign.center});

  @override
  State<StatefulWidget> createState() {
    return TextClassItalicsState();
  }
}

class TextClassItalicsState extends State<TextClassItalics> {
  @override
  Widget build(BuildContext context) {
    return RichText(
     text: TextSpan(text : widget.textContent,style:widget.coming != null
         ?  TextStyle(
             fontSize: widget.fontSize,
             fontWeight: widget.fontWeight,
             color: widget.textcolor != null
                 ? widget.textcolor
                 : colorDarkGrey,
             fontStyle: FontStyle.italic)
         : TextStyle(
             fontSize: widget.fontSize,
             fontWeight: widget.fontWeight,
             color: widget.textcolor != null
                 ? widget.textcolor
                 : colorDarkGrey,
             fontStyle: FontStyle.italic) ),
      textAlign: widget.textAlign!,
    );
  }
}

class Button extends StatefulWidget {
  var textContent;
  VoidCallback? onPressed;
  double? fontSize;
  double? radius;
  double? width;
  double? height;
  Color? buttontextColor;
  Color? buttonBg;
  FontWeight? weight;



  Button(
      {@required this.textContent,
      @required this.onPressed,this.radius,this.width,this.buttonBg,this.buttontextColor,this.height,this.weight,
      this.fontSize = textSizeLargeMedium});

  @override
  State<StatefulWidget> createState() {
    return ButtonState();
  }
}

class ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: widget.onPressed,
      textColor: widget.buttontextColor,color:widget.buttonBg,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(widget.radius!)),
      padding: const EdgeInsets.all(0.0),
      child: Container(
        width: widget.width,alignment: Alignment.center,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.buttonBg,
          borderRadius: BorderRadius.all(Radius.circular(widget.radius!)),
        ),
        child: texts(widget.textContent,
            textColor: colorWhite,
            fontSize: widget.fontSize,
            fontWeight: widget.weight ?? FontWeight.w500),
      ),
    );
  }

  @override
  State<StatefulWidget>? createState() {
    // TODO: implement createState
    return null;
  }
}

class SmallButton extends StatefulWidget {
  var textContent;
  VoidCallback? onPressed;
  double? fontSize = textSizeLargeMedium;
  double? width = SizeConfig.blockSizeHorizontal * 24;
  Color? bgColor;

  SmallButton(
      {@required this.textContent,
      @required this.onPressed,
      this.fontSize = textSizeLargeMedium,
      this.width});

  @override
  State<StatefulWidget> createState() {
    return SmallButtonState();
  }
}

class SmallButtonState extends State<SmallButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: widget.width,
        padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical*1.25),
        decoration: const BoxDecoration(
          color: colorPrimary,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Center(
          child: texts(widget.textContent,
              textColor: colorWhite,
              fontSize: widget.fontSize,isCentered: true,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }

  @override
  State<StatefulWidget>? createState() {
    // TODO: implement createState
    return null;
  }
}

class T10TopBar extends StatefulWidget {
  var titleName;

  T10TopBar(var this.titleName);

  @override
  State<StatefulWidget> createState() {
    return T10TopBarState();
  }
}

class T10TopBarState extends State<T10TopBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffffffff),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                finish(context);
              },
            ),
            Center(
              child: texts(
                widget.titleName,
                fontFamily: fontBold,
                textColor: Colors.black,
                fontSize: textSizeLargeMedium,
              ),
            ),
            // SvgPicture.asset("assets/searchIcon.svg", color: Colors.black)
            //     .paddingOnly(right: 16),
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget>? createState() {
    return null;
  }
}

Widget texts(String text,
    {var fontSize = textSizeLargeMedium,
    textColor = color_text_secondary,String? childText,Color? childTextColor,
    var fontFamily,
    var isCentered = false,
    var maxLine,
    var latterSpacing = 0.0,
    bool textAllCaps = false,
    var isLongText = false,
    bool lineThrough = false,
    bool isMandatory = false,
    FontWeight? fontWeight}) {
  return
    RichText(
      textAlign: isCentered ? TextAlign.center : TextAlign.start,
      text: TextSpan(
        text: text,
        style: GoogleFonts.raleway(
          textStyle: GoogleFonts.raleway(
            textStyle: TextStyle(
              fontFamily: fontFamily ,
              fontSize: fontSize,
              color: textColor,
              height: 1.5,
              fontWeight: fontWeight,
              letterSpacing: latterSpacing,
            ),
          ),
        ),
        children: <TextSpan>[
          TextSpan(text: childText ?? "", style: GoogleFonts.raleway(
            textStyle: TextStyle(
              fontFamily: fontFamily ,
              fontSize: fontSize,
              color: childTextColor,
              height: 1.5,
              fontWeight: fontWeight,
              letterSpacing: latterSpacing,
            ),
          ),),
        ],
      ),
    );
}

final headingStyle = TextStyle(
  fontSize: SizeConfig.blockSizeHorizontal * 10,
  fontWeight: FontWeight.bold,
  color: colorDarkGrey,
  height: 1.5,
);

class LabelEditText extends StatefulWidget {
  Widget? text;
  double? bottom;
  var isPassword;
  var isSecure;
  var fontSize;
  var textColor;
  var fontFamily;
  var maxLine = 1;
  var minLine = 1;
  Function? validator;
  TextEditingController? mController;
  TextInputType? keyboardType;
  VoidCallback? onPressed;
  var hintText;
  var labelText;
  Function? onSubmitted;
  TextInputAction? textInputAction;
  List<TextInputFormatter>? inputFormatter;
  FocusNode? focusNode;
  String? type;
  double? vertical, horizontal;
  TextAlign? textAlign;

  LabelEditText(this.text, this.bottom,
      {var this.fontSize = textSizeMedium,
      var this.textColor = color_text_secondary,
      var this.fontFamily = fontRegular,
      var this.isPassword = false,
      var this.isSecure = false,
      var this.mController,
      var this.maxLine = 1,
      var this.minLine = 1,
      this.validator,
      this.keyboardType,
      this.hintText,
      this.labelText,
      this.textInputAction,
      this.inputFormatter,
      this.focusNode,
      this.type,
      this.vertical,
      this.horizontal,
      this.onSubmitted,
      this.textAlign = TextAlign.start});

  @override
  _LabelEditTextState createState() => _LabelEditTextState();
}

class _LabelEditTextState extends State<LabelEditText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: SizeConfig.blockSizeHorizontal * 96,
            margin: EdgeInsets.only(bottom: widget.bottom!),
            child: widget.text),
        TextFormField(
          style: TextStyle(fontSize: textSizeMedium, fontFamily: fontRegular),
          obscureText: widget.isPassword,
          controller: widget.mController,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          inputFormatters: widget.inputFormatter,
          focusNode: widget.focusNode,
          textAlign: widget.textAlign!,
          minLines: widget.minLine,
          maxLines: widget.maxLine,
          onFieldSubmitted: (value)
          {
            widget.onSubmitted!();
          },
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            hintText: widget.hintText,
            isDense: false,
            hintStyle: TextStyle(
                fontSize: SizeConfig.blockSizeVertical * 1.95,
                fontWeight: FontWeight.w400),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                  width: 1.2, style: BorderStyle.none, color: colorBorderGrey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                  width: 1.25,
                  style: BorderStyle.solid,
                  color: colorBorderGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                  width: 1.25, style: BorderStyle.solid, color: colorPrimary),
            ),
            contentPadding: EdgeInsets.symmetric(
                vertical: SizeConfig.blockSizeVertical * 1.25,
                horizontal: SizeConfig.blockSizeHorizontal * 4),
          ),
          validator: (value)
          {
            widget.validator;
          },
        ),
      ],
    );
  }
}
