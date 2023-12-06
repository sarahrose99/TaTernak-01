import 'package:taternak13/core/app_export.dart';import 'package:taternak13/presentation/profile_screen/models/profile_model.dart';/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {Rx<ProfileModel> profileModelObj = ProfileModel().obs;

 }
