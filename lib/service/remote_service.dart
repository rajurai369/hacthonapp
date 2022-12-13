import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RemoteDetails {
  var client = http.Client();

  Future fetchdetails() async {
    try {
      var response = await client.get(Uri.parse("uri"));
      if(response.statusCode==200){
        var jsonstring =response.body;
        return 
      }
    } catch (e) {
      Get.snackbar("error", e.toString());
    }
  }
}
