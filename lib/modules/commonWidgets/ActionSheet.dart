import 'package:flutter/cupertino.dart';
import 'package:nb_utils/nb_utils.dart';

class ActionSheet {
  Widget actionSheet(
      BuildContext context, {
        required Function onCamera,
        required Function onGallery,
      }) {
    return CupertinoActionSheet(
      title: Text(
        "QC Application",
        style: secondaryTextStyle(),
      ),
      actions: [
        CupertinoActionSheetAction(
          onPressed: () {
            onCamera();
            finish(context);
          },
          child: Text('Camera', style: primaryTextStyle(size: 18)),
          isDefaultAction: true,
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            onGallery();
            finish(context);
          },
          child: Text('Gallery', style: primaryTextStyle(size: 18)),
          isDefaultAction: true,
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            finish(context);
          },
          child: Text(
            'Cancel',
            style: primaryTextStyle(color: Color(0xFF000000), size: 18),
          )),
    );
  }
}
