import 'controller/hewan_status_hewan_controller.dart';
import 'package:flutter/material.dart';
import 'package:taternak13/core/app_export.dart';
import 'package:taternak13/widgets/app_bar/appbar_leading_image.dart';
import 'package:taternak13/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:taternak13/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:taternak13/widgets/app_bar/custom_app_bar.dart';
import 'package:taternak13/widgets/custom_checkbox_button.dart';
import 'package:taternak13/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class HewanStatusHewanScreen extends GetWidget<HewanStatusHewanController> {
  const HewanStatusHewanScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Divider(
                  color: appTheme.blueGray10003,
                  indent: 29.h,
                  endIndent: 34.h,
                ),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 124.h,
                    child: Divider(
                      color: appTheme.blueGray10001,
                      indent: 38.h,
                    ),
                  ),
                ),
                SizedBox(height: 29.v),
                _buildTerjual(),
                SizedBox(height: 9.v),
                Divider(
                  color: appTheme.blueGray10003,
                  indent: 35.h,
                  endIndent: 38.h,
                ),
                SizedBox(height: 11.v),
                _buildSiapJual(),
                SizedBox(height: 4.v),
                Divider(
                  color: appTheme.blueGray10003,
                  indent: 38.h,
                  endIndent: 35.h,
                ),
                SizedBox(height: 9.v),
                _buildPemeliharaan(),
                SizedBox(height: 5.v),
                Divider(
                  color: appTheme.blueGray10003,
                  indent: 38.h,
                  endIndent: 35.h,
                ),
                SizedBox(height: 555.v),
                _buildButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 45.v,
      leadingWidth: 53.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSolidArrowCircleLeft,
        margin: EdgeInsets.only(
          left: 29.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      title: AppbarSubtitleThree(
        text: "lbl_status_hewan3".tr,
        margin: EdgeInsets.only(left: 17.h),
      ),
      actions: [
        AppbarSubtitleFour(
          text: "lbl_reset".tr,
          margin: EdgeInsets.fromLTRB(43.h, 16.v, 43.h, 9.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTerjual() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 73.h,
          right: 51.h,
        ),
        child: Obx(
          () => CustomCheckboxButton(
            alignment: Alignment.centerRight,
            width: 290.h,
            text: "lbl_terjual".tr,
            value: controller.terjual.value,
            isRightCheck: true,
            onChange: (value) {
              controller.terjual.value = value;
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSiapJual() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 73.h,
          right: 51.h,
        ),
        child: Obx(
          () => CustomCheckboxButton(
            alignment: Alignment.centerRight,
            width: 290.h,
            text: "lbl_siap_jual".tr,
            value: controller.siapJual.value,
            isRightCheck: true,
            onChange: (value) {
              controller.siapJual.value = value;
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPemeliharaan() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 73.h,
          right: 51.h,
        ),
        child: Obx(
          () => CustomCheckboxButton(
            alignment: Alignment.centerRight,
            width: 290.h,
            text: "lbl_pemeliharaan".tr,
            value: controller.pemeliharaan.value,
            isRightCheck: true,
            onChange: (value) {
              controller.pemeliharaan.value = value;
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        children: [
          SizedBox(height: 8.v),
          CustomElevatedButton(
            height: 38.v,
            text: "lbl_terapkan_filter".tr,
            margin: EdgeInsets.only(left: 10.h),
            buttonStyle: CustomButtonStyles.fillPrimaryTL9,
            buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer_1,
          ),
        ],
      ),
    );
  }
}
