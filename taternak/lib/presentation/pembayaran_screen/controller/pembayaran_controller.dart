import 'package:taternak13/core/app_export.dart';import 'package:taternak13/presentation/pembayaran_screen/models/pembayaran_model.dart';import 'package:flutter/material.dart';/// A controller class for the PembayaranScreen.
///
/// This class manages the state of the PembayaranScreen, including the
/// current pembayaranModelObj
class PembayaranController extends GetxController {TextEditingController group102Controller = TextEditingController();

Rx<PembayaranModel> pembayaranModelObj = PembayaranModel().obs;

@override void onClose() { super.onClose(); group102Controller.dispose(); } 
 }
