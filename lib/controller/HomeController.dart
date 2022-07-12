import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  TimeOfDay? timeOfDay;
  selectTime(BuildContext context) async {
    timeOfDay = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: 12, minute: 00),
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null) {
      _loading == true;
    }
    update();
  }
}
