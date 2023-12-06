import 'package:taternak13/core/app_export.dart';
import 'package:taternak13/presentation/faq_one_screen/models/faq_one_model.dart';

/// A controller class for the FaqOneScreen.
///
/// This class manages the state of the FaqOneScreen, including the
/// current faqOneModelObj
class FaqOneController extends GetxController {
  Rx<FaqOneModel> faqOneModelObj = FaqOneModel().obs;
}
