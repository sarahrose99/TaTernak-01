import 'package:taternak13/core/app_export.dart';
import 'package:taternak13/presentation/pesanan_screen/models/pesanan_model.dart';

/// A controller class for the PesananScreen.
///
/// This class manages the state of the PesananScreen, including the
/// current pesananModelObj
class PesananController extends GetxController {
  Rx<PesananModel> pesananModelObj = PesananModel().obs;
}
