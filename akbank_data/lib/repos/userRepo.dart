import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class UserRepo with ChangeNotifier {
  var incomingData;
  getData() {
    http.get('https://finfree.app/demo',
        headers: {'authorization': 'R29vZCBMdWNr'}).then((value) {
      var data = json.decode(value.body);
      print(data);

      notifyListeners();
    });
  }
}
