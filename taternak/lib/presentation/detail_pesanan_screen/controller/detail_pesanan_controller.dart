import 'package:taternak13/core/app_export.dart';import 'package:taternak13/presentation/detail_pesanan_screen/models/detail_pesanan_model.dart';/// A controller class for the DetailPesananScreen.
///
/// This class manages the state of the DetailPesananScreen, including the
/// current detailPesananModelObj
class DetailPesananController extends GetxController {Rx<DetailPesananModel> detailPesananModelObj = DetailPesananModel().obs;

Rx<String> radioGroup = "".obs;

 }
