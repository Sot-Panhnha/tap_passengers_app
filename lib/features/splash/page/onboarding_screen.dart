// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../constants/colors.dart';
// import '../../../constants/constant.dart';
// import '../../../constants/widgets/app_button.dart';
// import 'OnboardModel.dart';
// import 'choosing_language.dart';

// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({Key? key}) : super(key: key);

//   @override
//   State<OnBoardingScreen> createState() => _OnBoardingScreenState();
// }

// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   late PageController _pageController;
//   int currentIndex = 0;

//   final List<OnboardModel> screens = <OnboardModel>[
//     OnboardModel(image: 'image', title: 'title', content: 'content'),
//     OnboardModel(image: 'image', title: 'title', content: 'content'),
//     OnboardModel(image: 'image', title: 'title', content: 'content'),
//   ];

//   @override
//   void initState() {
//     _pageController = PageController(initialPage: 0);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.only(top: maxPadding.h),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 TextButton(onPressed: (){
//                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const ChoosingLanguageScreen()));
//                   _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.bounceIn);
//                 }, child: const Text(skipText)),
//               ],
//             ),
//           ),
//           Expanded(
//             child: PageView.builder(
//               itemCount: screens.length,
//               controller: _pageController,
//               onPageChanged: (int index) {
//                 setState(() {
//                   currentIndex = index;
//                 });
//               },
//               itemBuilder: (_,index) {
//                 return Padding(
//                   padding: EdgeInsets.symmetric(horizontal: mediumPadding.w),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(height: minPadding.h,),
//                       Placeholder(
//                         fallbackHeight: 500.sh,
//                         fallbackWidth: 300.sw,
//                       ),
//                       // Container(
//                       //   width: 300.00,
//                       //   height: 300.00,
//                       //   child: Image.asset(screens[index].image),
//                       // ),
//                       Padding(
//                         padding: EdgeInsets.only(top: maxPadding.h , left: minPadding.w, right: minPadding.w),
//                         child: Container(
//                           alignment: Alignment.center,
//                           width: double.infinity,
//                           child: Text(screens[index].title),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: defaultPadding.w,),
//                         child: Container(
//                           alignment: Alignment.center,
//                           width: double.infinity,
//                           height: 80.h,
//                           color: Colors.blueAccent,
//                           child: Text(screens[index].content, textAlign: TextAlign.center,),
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           SizedBox(height: 300.h),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(screens.length, (index) => buildDot(index, context)),
//           ),
//           SizedBox(height: minPadding.h,),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: mediumPadding.w, vertical: maxPadding.h),
//             child: AppButton(title: currentIndex == screens.length - 1 ? getStartText : nextText ,
//                 onPressed: (){
//                   if(currentIndex == screens.length -1){
//                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const ChoosingLanguageScreen()));
//                   }
//                   _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
//                 }
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Container buildDot(int index, BuildContext context){
//     return Container(
//       height: 15.h,
//       width: currentIndex == index ? 30.w : 15.w,
//       margin: EdgeInsets.only(right: 5.w),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20.w),
//         color: primaryColor,
//       ),
//     );
//   }
// }

