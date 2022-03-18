import 'package:flutter/cupertino.dart';

class AddSaleIReturnModel{
  TextEditingController? name;
  TextEditingController? qty;
  TextEditingController? unit;
  TextEditingController? price;
  TextEditingController? discountPercent;
  String? gst;
  String? amount;

  AddSaleIReturnModel(this.name, this.qty, this.unit, this.price,
      this.discountPercent, this.gst, this.amount);

}