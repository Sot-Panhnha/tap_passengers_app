
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constant.dart';
import '../../../constants/widgets/app_button.dart';
import '../../splash/page/choosing_language.dart';

class UserNameRegisterPage extends StatelessWidget {
  const UserNameRegisterPage({super.key});

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
            Text('How Can We Call You', style: TextStyle(fontSize: 70.sp, fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.symmetric(vertical: largePadding.h),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.6),),
                  ),
                  hintText: 'Your Name'
                ),
              ),
            ),
            const Spacer(),
            AppButton(title: doneText, onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ChoosingLanguageScreen()));
            },),
          ],
        ),
      ),
    );
  }
}
