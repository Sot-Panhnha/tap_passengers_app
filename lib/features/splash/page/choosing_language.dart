import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tap_passengers_app/constants/constant.dart';
import 'package:tap_passengers_app/constants/widgets/app_button.dart';
import 'package:tap_passengers_app/features/authentication/pages/register_phone_number.dart';

class ChoosingLanguageScreen extends StatelessWidget {
  const ChoosingLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mediumPadding.w, vertical: mediumPadding.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Placeholder(
              fallbackWidth: 500.w,
              fallbackHeight: 500.h,
            ),
            SizedBox(height: largePadding.h),
            AppButton(title: khmerLang, onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const RegisterPhoneNumber()));
            },),
            AppButton(title: englishLang, onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const RegisterPhoneNumber()));
            },),
            AppButton(title: chineseLang, onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const RegisterPhoneNumber()));
            },),
          ],
        ),
      ),
    );
  }
}
