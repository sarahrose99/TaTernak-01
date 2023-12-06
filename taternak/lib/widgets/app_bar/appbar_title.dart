import 'package:flutter/material.dart';
import 'package:taternak13/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Container(
          width: 117.h,
          decoration: AppDecoration.outlineBlack9005,
          child: Text(
            text,
            style: CustomTextStyles.headlineSmall_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ),
    );
  }
}
