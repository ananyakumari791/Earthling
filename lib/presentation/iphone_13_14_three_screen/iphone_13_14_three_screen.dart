import 'package:earthlings/core/app_export.dart';
import 'package:earthlings/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Iphone1314ThreeScreen extends StatelessWidget {
  const Iphone1314ThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blue100Ef,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 463.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topRight, children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                margin: EdgeInsets.only(right: 240.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 29.h, vertical: 34.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ImageConstant.imgGroup1Indigo900),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 85.v),
                                      Container(
                                          height: 27.v,
                                          width: 28.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.indigo600Ef,
                                              borderRadius:
                                                  BorderRadius.circular(14.h),
                                              border: Border.all(
                                                  color: appTheme.blue800,
                                                  width: 1.h)))
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgLine1Lime900,
                            height: 236.v,
                            width: 150.h,
                            alignment: Alignment.topRight),
                        CustomImageView(
                            imagePath: ImageConstant.imgLine2Pink600,
                            height: 119.v,
                            width: 158.h,
                            alignment: Alignment.topRight),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                                height: 31.v,
                                width: 30.h,
                                margin:
                                    EdgeInsets.only(right: 51.h, bottom: 136.v),
                                decoration: BoxDecoration(
                                    color: appTheme.deepPurple700Ef,
                                    borderRadius: BorderRadius.circular(15.h),
                                    border: Border.all(
                                        color: appTheme.lightGreenA700,
                                        width: 1.h)))),
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse3RedA700,
                            height: 160.v,
                            width: 35.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(bottom: 117.v),
                            onTap: () {
                              onTapImgImage(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgBot1,
                            height: 268.v,
                            width: 188.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 52.v)),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                                width: 337.h,
                                child: Text(
                                    "Prakriti:\nNurturing a Sustainable Universe",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.headlineLarge)))
                      ])),
                  SizedBox(height: 5.v),
                  _buildClientTestimonials(context)
                ]))));
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return SizedBox(
        height: 362.v,
        width: 361.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomIconButton(
              height: 42.v,
              width: 36.h,
              padding: EdgeInsets.all(13.h),
              alignment: Alignment.bottomRight,
              child: CustomImageView(imagePath: ImageConstant.imgArrowRight)),
          CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 3.v)),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  width: 335.h,
                  margin: EdgeInsets.only(left: 6.h),
                  child: Text(
                      "Say hello to our friendly chatbot ,your sustainable living companion.\nGet tips on reducing waste, reusing items creatively and making eco friendly choices. Ready to dive into sustainable living? Let’s get started!",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineMedium)))
        ]));
  }

  /// Navigates to the iphone1314TwoScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314TwoScreen);
  }
}
