import 'controller/pembayaran_controller.dart';import 'package:flutter/material.dart';import 'package:taternak13/core/app_export.dart';import 'package:taternak13/widgets/app_bar/appbar_leading_image.dart';import 'package:taternak13/widgets/app_bar/appbar_subtitle_two.dart';import 'package:taternak13/widgets/app_bar/custom_app_bar.dart';import 'package:taternak13/widgets/custom_elevated_button.dart';import 'package:taternak13/widgets/custom_outlined_button.dart';import 'package:taternak13/widgets/custom_text_form_field.dart';import 'package:taternak13/presentation/berhasil_bayar_dialog/berhasil_bayar_dialog.dart';import 'package:taternak13/presentation/berhasil_bayar_dialog/controller/berhasil_bayar_controller.dart';class PembayaranScreen extends GetWidget<PembayaranController> {const PembayaranScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildAtas(), SizedBox(height: 16.v), Expanded(child: SingleChildScrollView(child: _buildPembayaran()))])))); } 
/// Section Widget
Widget _buildAtas() { return Container(padding: EdgeInsets.symmetric(vertical: 8.v), decoration: AppDecoration.fillPrimary, child: Column(children: [SizedBox(height: 7.v), CustomAppBar(height: 29.v, leadingWidth: 49.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgRewindOnerrorcontainer, margin: EdgeInsets.only(left: 17.h, bottom: 5.v)), title: AppbarSubtitleTwo(text: "lbl_pembayaran".tr, margin: EdgeInsets.only(left: 11.h)))])); } 
/// Section Widget
Widget _buildPembayaran() { return Padding(padding: EdgeInsets.only(left: 1.h, bottom: 5.v), child: Column(children: [Container(padding: EdgeInsets.fromLTRB(16.h, 5.v, 16.h, 4.v), decoration: AppDecoration.outlineGray40003, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 8.v, bottom: 1.v), child: Text("msg_total_pembayaran".tr, style: theme.textTheme.bodyMedium)), Padding(padding: EdgeInsets.only(top: 6.v, right: 5.h), child: Text("lbl_rp_18_000_000".tr, style: CustomTextStyles.bodyLargePrimary))])), Container(padding: EdgeInsets.fromLTRB(11.h, 10.v, 11.h, 9.v), decoration: AppDecoration.outlineGray40003, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(left: 5.h, top: 12.v, bottom: 8.v), child: Text("lbl_bayar_dalam".tr, style: theme.textTheme.bodyMedium)), Padding(padding: EdgeInsets.only(top: 4.v), child: Column(children: [Text("msg_23_jam_59_menit".tr, style: CustomTextStyles.bodyMediumPrimary), SizedBox(height: 2.v), Text("msg_jatuh_tempo_21_november".tr, style: CustomTextStyles.bodySmallGray50010)]))])), SizedBox(height: 14.v), CustomImageView(imagePath: ImageConstant.imgImage25, height: 21.v, width: 56.h, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 15.h)), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(left: 19.h, right: 20.h), child: CustomTextFormField(controller: controller.group102Controller, hintText: "msg_no_rekening_taternak".tr, hintStyle: CustomTextStyles.bodySmall10, textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 1.h), borderDecoration: TextFormFieldStyleHelper.underLineBlueGray)), SizedBox(height: 2.v), Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_5220304312".tr, style: CustomTextStyles.bodyLargePrimary), Padding(padding: EdgeInsets.symmetric(vertical: 5.v), child: Text("lbl_salin".tr, style: CustomTextStyles.bodySmallPrimary10))])), SizedBox(height: 5.v), Divider(color: appTheme.blueGray10001, indent: 20.h, endIndent: 20.h), SizedBox(height: 20.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h), child: Text("lbl_bukti_transfer".tr, style: theme.textTheme.bodyMedium))), SizedBox(height: 11.v), Container(width: 375.h, margin: EdgeInsets.symmetric(horizontal: 19.h), decoration: AppDecoration.outlineGray, child: CustomElevatedButton(width: 64.h, text: "lbl_pilih_file".tr, buttonTextStyle: CustomTextStyles.bodySmall10_1)), SizedBox(height: 31.v), Text("msg_setiap_transaksi".tr, style: theme.textTheme.bodySmall), SizedBox(height: 14.v), CustomOutlinedButton(text: "lbl_kirim_bukti".tr, margin: EdgeInsets.symmetric(horizontal: 41.h), onPressed: () {onTapKirimBukti();})])); } 

/// Displays a dialog with the [BerhasilBayarDialog] content.
onTapKirimBukti() { Get.dialog(AlertDialog(backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0), content:BerhasilBayarDialog(Get.put(BerhasilBayarController(),),),)); } 
 }
