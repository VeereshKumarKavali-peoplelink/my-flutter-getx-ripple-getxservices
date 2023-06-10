

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

//GetxService  is like a GetxController class .
//It shares the same lifecycle (onInit(), onReady(), onClose())
//It just notifies Getx Dependency Injection system that this subclass can not be removed from memory



class Service extends GetxService{

  Future<void> incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('pressed $counter times');
    await prefs.setInt('counter', counter);

  }
}