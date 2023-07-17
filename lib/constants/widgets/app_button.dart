import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tap_passengers_app/constants/constant.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const AppButton({super.key, required this.title, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding.h),
      child: SizedBox(
        height: 45,
        width: double.infinity,
        child: ElevatedButton(
            onPressed: onPressed,
            child: Text(title)),
      ),
    );
  }
}
