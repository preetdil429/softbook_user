import 'dart:io';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:flutter_softbook/extras/constant/StringConstant.dart';
import 'package:images_picker/images_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';


class ImagePicker {
  static Future<List<String>> pickImage(String imageSource, int count) async {
    List<String> imageFile = [];
    if (imageSource == 'Gallery') {
      if (Platform.isIOS) {
        await ImagesPicker.pick(count: count, pickType: PickType.image)
            .then((value) {
          imageFile.add(value!.elementAt(0).path);
        }).catchError((error) {
          print(error.toString());
        });
      } else {
        await MultiImagePicker.pickImages(
          maxImages: count,
          enableCamera: false,
          materialOptions: MaterialOptions(
            actionBarColor: colorPrimaryStr,
            actionBarTitle: appName,
            allViewTitle: "All Photos",
            useDetailsView: false,
            selectionLimitReachedText: "Please select $count images at a time",
            selectCircleStrokeColor: colorPrimaryStr,
          ),
        ).then((value) async {
          for (int i = 0; i < value.length; i++) {

            imageFile.add(value.elementAt(i).identifier!);
          }
        }).catchError((error) {
          print(error.toString());
        });
      }
    } else if (imageSource == 'Camera') {
      await ImagesPicker.openCamera(pickType: PickType.image, maxTime: 30)
          .then((value) {
        imageFile.add(value!.elementAt(0).path);
      }).catchError((error) {
        print(error.toString());
      });
    }
    return imageFile;
  }
}
