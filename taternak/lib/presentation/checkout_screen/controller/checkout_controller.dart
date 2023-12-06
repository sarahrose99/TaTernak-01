import 'package:taternak13/core/app_export.dart';import 'package:taternak13/presentation/checkout_screen/models/checkout_model.dart';import 'package:flutter/material.dart';/// A controller class for the CheckoutScreen.
///
/// This class manages the state of the CheckoutScreen, including the
/// current checkoutModelObj
class CheckoutController extends GetxController {TextEditingController masukkancatatanController = TextEditingController();

Rx<CheckoutModel> checkoutModelObj = CheckoutModel().obs;

Rx<String> radioGroup = "".obs;

@override void onClose() { super.onClose(); masukkancatatanController.dispose(); } 
 }
