import 'package:flutter/material.dart';
import 'package:vn_treinamentos/core/app_export.dart';
import 'package:vn_treinamentos/presentation/hist_rico_page/hist_rico_page.dart';
import 'package:vn_treinamentos/widgets/app_bar/appbar_leading_image.dart';
import 'package:vn_treinamentos/widgets/app_bar/appbar_subtitle.dart';
import 'package:vn_treinamentos/widgets/app_bar/custom_app_bar.dart';
import 'package:vn_treinamentos/widgets/custom_bottom_bar.dart';
import 'package:vn_treinamentos/widgets/custom_switch.dart';
import 'package:vn_treinamentos/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ConfiguraEsScreen extends StatelessWidget {
  ConfiguraEsScreen({Key? key}) : super(key: key);

  TextEditingController setaOneController = TextEditingController();
  TextEditingController setaOneController1 = TextEditingController();
  bool isSelectedSwitch = false;
  bool isSelectedSwitch1 = false;
  TextEditingController termoseCondiesController = TextEditingController();
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 3.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    decoration: AppDecoration.fillGray,
                    child: Column(
                      children: [
                        Divider(color: appTheme.whiteA700),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: Text(
                              "USUÁRIO",
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 14.v),
                        Padding(
                          padding: EdgeInsets.only(left: 11.h, right: 12.h),
                          child: CustomTextFormField(
                            controller: setaOneController,
                            hintText: "Perfil",
                            hintStyle: CustomTextStyles.titleLarge22,
                            suffix: Container(
                              margin: EdgeInsets.only(
                                left: 30.h,
                                top: 5.v,
                                bottom: 4.v,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgSeta150x50,
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(maxHeight: 59.v),
                            contentPadding: EdgeInsets.only(
                              left: 14.h,
                              top: 15.v,
                              bottom: 15.v,
                            ),
                            borderDecoration: TextFormFieldStyleHelper.fillGray,
                            filled: true,
                            fillColor: appTheme.gray90001,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Divider(indent: 10.h, endIndent: 12.h),
                        SizedBox(height: 16.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: Text(
                              "IDIOMA",
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 12.v),
                        Padding(
                          padding: EdgeInsets.only(left: 11.h, right: 12.h),
                          child: CustomTextFormField(
                            controller: setaOneController1,
                            hintText: "Português(BR)",
                            hintStyle: CustomTextStyles.titleLarge22,
                            suffix: Container(
                              margin: EdgeInsets.only(
                                left: 30.h,
                                top: 5.v,
                                bottom: 4.v,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgSeta150x50,
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(maxHeight: 59.v),
                            contentPadding: EdgeInsets.only(
                              left: 14.h,
                              top: 15.v,
                              bottom: 15.v,
                            ),
                            borderDecoration: TextFormFieldStyleHelper.fillGray,
                            filled: true,
                            fillColor: appTheme.gray90001,
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Divider(indent: 10.h, endIndent: 12.h),
                        SizedBox(height: 13.v),
                        _buildTermsAndConditions(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 65.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSeta1,
        margin: EdgeInsets.only(top: 4.v, bottom: 5.v),
        onTap: () {
          onTapSetaOne(context);
        },
      ),
      actions: [
        AppbarSubtitle(
          text: "config",
          margin: EdgeInsets.fromLTRB(15.h, 16.v, 15.h, 13.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  Widget _buildTermsAndConditions(BuildContext context) {
    return SizedBox(
      height: 343.v,
      width: 407.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 59.v,
              width: 405.h,
              margin: EdgeInsets.only(top: 48.v),
              decoration: BoxDecoration(
                color: appTheme.gray90001,
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.h)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 59.v,
              width: 405.h,
              margin: EdgeInsets.only(top: 107.v),
              decoration: BoxDecoration(color: appTheme.gray90001),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 59.v,
              width: 405.h,
              margin: EdgeInsets.only(bottom: 118.v),
              decoration: BoxDecoration(color: appTheme.gray90001),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 59.v,
              width: 405.h,
              margin: EdgeInsets.only(bottom: 59.v),
              decoration: BoxDecoration(color: appTheme.gray90001),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 59.v,
              width: 405.h,
              decoration: BoxDecoration(
                color: appTheme.gray90001,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(10.h)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("GERAL", style: theme.textTheme.headlineMedium),
                ),
                SizedBox(height: 23.v),
                Padding(
                  padding: EdgeInsets.only(left: 14.h, right: 9.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 4.v, bottom: 2.v),
                        child: Text("Tema Escuro", style: CustomTextStyles.titleLarge22),
                      ),
                      CustomSwitch(
                        value: isSelectedSwitch,
                        onChange: (value) {
                          isSelectedSwitch = value;
                          // Add any additional logic you need here
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13.v),
                Divider(indent: 1.h),
                // ... (existing code)

                // Repeat similar modifications for other switches and buttons
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Perfil:
        return AppRoutes.histRicoPage;
      case BottomBarEnum.Homepage2:
        return "/";
      case BottomBarEnum.Sair:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.histRicoPage:
        return HistRicoPage();
      default:
        return DefaultWidget();
    }
  }

  onTapSetaOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reaDoProfScreen);
  }
}