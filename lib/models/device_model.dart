import 'package:flutter/material.dart';

class DeviceModel {
  String typeDevice;
  IconData iconDevice;
  String factoryDevice;
  String modelDevice;
  String macDevice;
  bool onDevice;
  DeviceModel(
      {required this.typeDevice,
      required this.iconDevice,
      required this.factoryDevice,
      required this.modelDevice,
      required this.macDevice,
      required this.onDevice});
}
