// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;


import '../model/apiResult.dart';

class SpApiPreParam {
  Map<String, String> headers = {'Content-Type': 'application/json'};
  http.Client? client;
  Uri? uri;

  @override
  String toString() => 'SpApiPreParam(headers: $headers, client: $client, uri: $uri)';
}

class Api {
  static String _authHeader() {
    String result = '';
    // MyInfoItem? login1 = GV.myInfoItem;
    // if (login1 != null) result = login1.accessToken ?? '';
    return result;
  }

  static SpApiPreParam? authTokenHttp({String? url}) {
    SpApiPreParam result = SpApiPreParam();
    result.client = http.Client();
    if (url != null) {
      result.uri = Uri.parse(url);
    } else {
      return null;
    }

    var bear1 = _authHeader();
    result.headers = {'accept': '*/*', 'Content-Type': 'application/json', 'connection': 'keep-alive'};
    if (bear1.isNotEmpty) result.headers['Authorization'] = 'Bearer $bear1';
    return result;
  }

  //db
  // static Future<dynamic> getWifiList() async {
  //   var c1 = Api.authTokenHttp(url: dw_system.vDashboard_wifi_list());
  //   try {
  //     final response = await c1?.client!.get(c1.uri!, headers: c1.headers).timeout(Duration(seconds: 5));
  //     if (response != null && response.statusCode == 200 && response.body.isNotEmpty) {
  //       // var result = ApiResult.fromJson
  //       var result = WifiModel.fromJsonArray(response.body);
  //       return result;
  //     }
  //   } catch (e) {
  //     debugPrint(e.toString());
  //   }
  //   return null;
  // }
}
