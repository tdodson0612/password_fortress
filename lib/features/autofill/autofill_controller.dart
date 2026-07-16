// lib/features/autofill/autofill_controller.dart

import 'package:flutter/material.dart';

import '../../services/autofill/autofill_service.dart';


class AutofillController
    extends ChangeNotifier {


  final AutofillService service;


  AutofillController({
    required this.service,
  });



  bool _enabled = false;


  bool get enabled =>
      _enabled;



  Future<void> enable() async {

    await service.enable();


    _enabled = true;


    notifyListeners();
  }



  Future<void> disable() async {

    await service.disable();


    _enabled = false;


    notifyListeners();
  }
}