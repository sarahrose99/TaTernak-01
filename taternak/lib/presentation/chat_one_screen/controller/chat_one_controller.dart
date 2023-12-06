import 'package:taternak13/core/app_export.dart';import 'package:taternak13/presentation/chat_one_screen/models/chat_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChatOneScreen.
///
/// This class manages the state of the ChatOneScreen, including the
/// current chatOneModelObj
class ChatOneController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ChatOneModel> chatOneModelObj = ChatOneModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
