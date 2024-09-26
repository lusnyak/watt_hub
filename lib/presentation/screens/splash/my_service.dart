import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class MyService {
  void doSomething() {
    debugPrint('Doing something!');
  }
}