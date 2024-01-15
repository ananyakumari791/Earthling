import 'package:earthlings/core/app_export.dart';
import 'package:earthlings/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Iphone1314OneScreen extends StatelessWidget {
  const Iphone1314OneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildPlaylist(context),
                  SizedBox(height: 28.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtEmbraceSustainability(context);
                      },
                      child: Text("Embrace Sustainability",
                          style: theme.textTheme.headlineLarge)),
                  SizedBox(height: 32.v),
                  Container(
                      width: 334.h,
                      margin: EdgeInsets.only(left: 30.h, right: 25.h),
                      child: Text(
                          "Welcome to our app! Join us on a journey.\nDiscover how every small action can make a difference.\nAre you ready to make an impact?",
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.headlineMedium)),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildClientTestimonials(context)));
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return SizedBox(
        height: 359.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImg11,
              height: 331.v,
              width: 318.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 20.h)),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(right: 240.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 29.h, vertical: 34.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup1),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 85.v),
                        Container(
                            height: 27.v,
                            width: 28.h,
                            decoration: BoxDecoration(
                                color: appTheme.lightGreen300,
                                borderRadius: BorderRadius.circular(14.h),
                                border: Border.all(
                                    color: appTheme.lightGreenA700,
                                    width: 1.h)))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgLine1,
              height: 236.v,
              width: 150.h,
              alignment: Alignment.topRight),
          CustomImageView(
              imagePath: ImageConstant.imgLine2,
              height: 119.v,
              width: 158.h,
              alignment: Alignment.topRight),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 31.v,
                  width: 30.h,
                  margin: EdgeInsets.only(right: 36.h, bottom: 46.v),
                  decoration: BoxDecoration(
                      color: appTheme.lightGreen300,
                      borderRadius: BorderRadius.circular(15.h),
                      border: Border.all(
                          color: appTheme.lightGreenA700, width: 1.h))))
        ]));
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 15.h, bottom: 18.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 3.v, bottom: 5.v),
                  child: Text("Skip", style: theme.textTheme.headlineSmall)),
              CustomIconButton(
                  height: 42.v,
                  width: 36.h,
                  padding: EdgeInsets.all(13.h),
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowRight))
            ]));
  }

  /// Navigates to the iphone1314TwoScreen when the action is triggered.
  onTapTxtEmbraceSustainability(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314TwoScreen);
  }
}
