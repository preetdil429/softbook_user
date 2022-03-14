import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http_interceptor/http/http.dart';
import 'package:http_interceptor/http/interceptor_contract.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';

import 'package:http_interceptor/http/intercepted_http.dart';
import 'package:http/http.dart' as http;


class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    log("API REQUEST -- " + data.toString());
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async
  {
    log("API RESPONSE -- " + data.toString());
    if ((data.statusCode == 401 &&
        json.decode(data.body!)["code_type"] != null &&
        json.decode(data.body!)["code_type"] == "invalid" ) || (json.decode(data.body!)["error"] != null &&
        json.decode(data.body!)["error"] == true && json.decode(data.body!)["message"] != null &&
        json.decode(data.body!)["message"] == "No user id"))
     {
        // Get.offAll(() => LoginScreen());
     }
    else if (data.statusCode == 403 &&
        json.decode(data.body!)["code_type"] != null &&
        json.decode(data.body!)["code_type"] == "expired" ||
        (json.decode(data.body!)["message"] != null &&
            json.decode(data.body!)["message"] == "Token is Invalid"))
    {
      // Get.defaultDialog(title: "Session Expired", content: Text("Your session has expired.\nPlease Refresh it."/*"Your session has expired.\nPlease login again."*/, style: TextStyle(),textAlign: TextAlign.center,), onConfirm: () async {
      /*  await sharedPref.setUserLoggedIn(false);
        SocketConnection.socket.disconnect();
        Get.offAll(() => LoginScreen());*/
      if (data.method == Method.GET)
      {
        final res = await http.get(Uri.parse(data.request?.url ?? ""),
            headers: data.request?.headers);
      return ResponseData(res.bodyBytes, res.statusCode,
            headers: res.headers,
            body: res.body,
            contentLength: res.contentLength,
            isRedirect: res.isRedirect,
            persistentConnection: res.persistentConnection,
            request: data.request);
      }
      else
      {
        final res = await http.post(Uri.parse(data.request?.url ?? ''),
            headers: data.request?.headers,body: data.request?.body);
        return ResponseData(res.bodyBytes,res.statusCode,
            headers: res.headers,
            body: res.body,
            contentLength: res.contentLength,
            isRedirect: res.isRedirect,
            persistentConnection: res.persistentConnection,
            request: data.request
         );
      }
      //   }, barrierDismissible: false, onWillPop: () async => false, textConfirm: "Refresh Now"/*"OK"*/, titleStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold));
    }
    return data;
  }
}