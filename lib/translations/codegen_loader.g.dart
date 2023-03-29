// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "title_Register": "التسجيل",
  "user_name": "الاسم",
  "account_email": "الايميل",
  "password": "كلمه السر",
  "bottom_register": "التسجيل",
  "have_account": "هل لديك حساب بالفعل ؟ ",
  "Login_bottom": "التسجيل",
  "choose_photo": "التقاط صوره"
};
static const Map<String,dynamic> en = {
  "title_Register": "Registration",
  "user_name": "name",
  "account_email": "Email",
  "password": "Password",
  "bottom_register": "Registration",
  "have_account": "Already have an account?",
  "Login_bottom": "Login",
  "choose_photo": "Choose Photo"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
