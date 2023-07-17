import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:tap_passengers_app/features/authentication/pages/opt_code_verify_page.dart';

import '../../../constants/constant.dart';
import '../../../constants/widgets/app_button.dart';

class RegisterPhoneNumber extends StatelessWidget {
  const RegisterPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            Text('Enter Your Phone Number', style: TextStyle(fontSize: 70.sp, fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.symmetric(vertical: largePadding.h),
              child: Container(
                height: 110.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.withOpacity(0.6))
                ),
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber value) {},
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    setSelectorButtonAsPrefixIcon: true,
                    leadingPadding: 25.w
                  ),
                  inputDecoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Phone Number'
                  ),
                ),
              ),
            ),
            const Spacer(),
            AppButton(title: getCodeText, onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const OptVerifyPage()));
            },),
          ],
        ),
      ),
    );
  }
}
