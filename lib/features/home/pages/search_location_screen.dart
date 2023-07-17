import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tap_passengers_app/constants/constant.dart';

class SearchLocationScreen extends StatefulWidget {
  const SearchLocationScreen({super.key});

  @override
  State<SearchLocationScreen> createState() => _SearchLocationScreenState();
}

class _SearchLocationScreenState extends State<SearchLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {  },
                icon: Icon(Icons.arrow_back , size: 60.sp,),
              ),
              SizedBox(width: mediumPadding.w,),
              Icon(Icons.circle,color: Colors.red, size: 40.sp,),
              SizedBox(width: defaultPadding.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your Location", style: TextStyle(fontSize: 20.sp),),
                  Row(
                    children: [
                      Text("Cambodain Korean Cooperation", style: TextStyle(fontSize: 30.sp),),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mediumPadding.sp),
        child: Column(
          children: [
            Form(
              child: Padding(
                padding: EdgeInsets.all(defaultPadding.sp),
                child: TextFormField(
                  onChanged: (value){},
                  textInputAction: TextInputAction.search,
                  decoration:InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Where do you want to go?',
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(vertical: defaultPadding.sp),
                      child: Icon(Icons.search, size: 60.sp,),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}