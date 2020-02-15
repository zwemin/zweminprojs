import 'dart:convert';

import 'package:currencyapp/models/currency.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  Future<Currency> currencydata() async{
    http.Response response = await http.get(
        'http://forex.cbm.gov.mm/api/latest');

    var c = jsonDecode(response.body);
    Currency res = Currency.fromJson(c);
    return res;
  }
}