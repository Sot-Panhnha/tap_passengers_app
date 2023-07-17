import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tap_passengers_app/features/authentication/pages/user_name_register_page.dart';
import 'package:tap_passengers_app/features/splash/page/choosing_language.dart';

import '../../../constants/constant.dart';
import '../../../constants/widgets/app_button.dart';

class OptVerifyPage extends StatefulWidget {
  const OptVerifyPage({super.key});

  @override
  State<OptVerifyPage> createState() => _OptVerifyPageState();
}

class _OptVerifyPageState extends State<OptVerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {  },
              icon: const Icon(Icons.arrow_back_outlined,),
            );
          },
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mediumPadding.w, vertical: maxPadding.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Enter Verification Code', style: TextStyle(fontSize: 70.sp, fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.symmetric(vertical: largePadding.h),
              child: OtpTextField(
                numberOfFields: 6,
                onSubmit: (String verifyCode){
                },
              ),
            ),
            TextButton(onPressed: () {  },
                child: Text('Don\'t get the code ?', style: TextStyle(color: Colors.blueAccent.withOpacity(0.9)),)),
            const Spacer(),
            AppButton(title: verifyText, onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const UserNameRegisterPage()));
            },),
          ],
        ),
      ),
    );
  }
}
