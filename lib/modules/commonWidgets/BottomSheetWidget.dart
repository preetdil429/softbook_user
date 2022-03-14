import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';
import 'package:get/get.dart';



class BottomSheetWidget {
  void showImageSelectionBottomSheet({Function? onCamera, Function? onGallery}) {
    Get.bottomSheet(
      Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(0.0)),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 16.0,
              ),
              new ListTile(
                  leading: new Icon(
                    Icons.photo_library,
                    color: colorPrimary,
                  ),
                  title: new Text('Photo Library'),
                  onTap: ()
              {
                onGallery!();
              }),
              new ListTile(
                  leading: new Icon(
                    Icons.photo_camera,
                    color: colorPrimary,
                  ),
                  title: new Text('Camera'),
                  onTap: ()
              {
                onCamera!();
              }),
              new ListTile(
                leading: new Icon(
                  Icons.cancel,
                  color: colorPrimary,
                ),
                title: new Text('Cancel'),
                onTap: () {
                  Get.back();
                },
              ),
            ],
          )),
      // barrierColor: Colors.red[50],
      isDismissible: false,
    );
  }
}
