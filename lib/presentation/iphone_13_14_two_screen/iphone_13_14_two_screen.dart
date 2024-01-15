import 'package:earthlings/core/app_export.dart';
import 'package:earthlings/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Iphone1314TwoScreen extends StatelessWidget {
  const Iphone1314TwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.red200Ef,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildPlaylist(context),
                  SizedBox(height: 19.v),
                  Container(
                      width: 311.h,
                      margin: EdgeInsets.only(left: 36.h, right: 42.h),
                      child: Text("REDUCE FOOD WASTAGE TO ZERO",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.headlineLarge)),
                  SizedBox(height: 23.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 327.h,
                          margin: EdgeInsets.only(left: 22.h, right: 40.h),
                          child: Text(
                              "Did you know that millions of people die of hunger every year?\nLet’s make a change together. \nWith our app you can track your nutrients while reducing food wastage.",
                              maxLines: 9,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineMedium))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildClientTestimonials(context)));
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return SizedBox(
        height: 346.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 254.v,
                  width: 303.h,
                  margin: EdgeInsets.only(right: 30.h, bottom: 6.v),
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgPngwing1,
                        height: 254.v,
                        width: 303.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                            onTap: () {
                              onTapView(context);
                            },
                            child: Container(
                                height: 31.v,
                                width: 30.h,
                                margin:
                                    EdgeInsets.only(right: 21.h, bottom: 13.v),
                                decoration: BoxDecoration(
                                    color: appTheme.red400.withOpacity(0.94),
                                    borderRadius: BorderRadius.circular(15.h),
                                    border: Border.all(
                                        color: appTheme.lightGreenA700,
                                        width: 1.h)))))
                  ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(right: 240.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 29.h, vertical: 34.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup3),
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
                                color: appTheme.red400.withOpacity(0.94),
                                borderRadius: BorderRadius.circular(14.h),
                                border: Border.all(
                                    color: appTheme.lightGreenA700,
                                    width: 1.h)))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgLine1Red300,
              height: 236.v,
              width: 150.h,
              alignment: Alignment.topRight),
          CustomImageView(
              imagePath: ImageConstant.imgLine2BlueGray200,
              height: 119.v,
              width: 158.h,
              alignment: Alignment.topRight),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse3,
              height: 160.v,
              width: 35.h,
              alignment: Alignment.bottomLeft,
              onTap: () {
                onTapImgImage(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 14.h, right: 14.h, bottom: 18.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(top: 21.v, bottom: 3.v)),
          CustomIconButton(
              height: 42.v,
              width: 36.h,
              padding: EdgeInsets.all(13.h),
              child: CustomImageView(imagePath: ImageConstant.imgArrowRight))
        ]));
  }

  /// Navigates to the iphone1314ThreeScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314ThreeScreen);
  }

  /// Navigates to the iphone1314OneScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314OneScreen);
  }
}
