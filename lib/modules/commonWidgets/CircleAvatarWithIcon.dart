import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_softbook/extras/constant/AppColor.dart';



class CircleAvatarWithIcon extends StatelessWidget {
  final String? loadUrl;
  final Function? press;
  final double? radius;
  final String? fileImagePath;

  const CircleAvatarWithIcon(
      {Key? key, this.loadUrl, this.fileImagePath, this.press, this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: radius,
      width: radius,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(loadUrl ??'')
          ),
          Positioned(
              bottom: 0,
              right: -28,
              child: RawMaterialButton(
                constraints:
                    const BoxConstraints(minWidth: 60.0, minHeight: 30.0),
                onPressed: ()
                {
                  press!();
                },
                elevation: 2.0,
                fillColor: Color(0xFFF5F6F9),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 18.0,
                  color: colorPrimary,
                ),
                shape: CircleBorder(),
              )),
        ],
      ),
    );
  }
}
