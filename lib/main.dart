import 'package:bookly_app/bookly_app.dart';
import 'package:bookly_app/core/di/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

