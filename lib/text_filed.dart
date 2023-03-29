
import 'package:flutter/material.dart';

Widget TextFiledWidegt({
  required TextEditingController controller,
  required TextInputType type,
  required String lable,
  FormFieldValidator? validate,
  String? hint,
  bool isPassword = false,
  bool? obscureText,
  IconData?  perfix,
  IconData?  suffixIcon,
  Function? suffixPressed,

})=>TextFormField(
  obscureText: isPassword,
  controller: controller,
  keyboardType: type,
  validator: validate,
  decoration:  InputDecoration(
      hintText: hint,
      labelText: lable,

      prefixIcon: Icon(perfix),
      suffixIcon: suffixIcon !=null ?
      IconButton(
        onPressed: (){ suffixPressed!();},
        icon: Icon(suffixIcon),
      )
          :null ,
      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(20),
      //   borderSide: BorderSide(color:kSecondaryColor )
      // ),
      // focusedBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(20),
      //   borderSide: BorderSide(color:kSecondaryColor),
      //
      // ),
      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10)

  ),

);


class IconStyle {
  Color? iconsColor;
  bool? withBackground;
  Color? backgroundColor;
  double? borderRadius;

  IconStyle({
    iconsColor = Colors.white,
    withBackground = true,
    backgroundColor = Colors.blue,
    borderRadius = 8,
  })  : this.iconsColor = iconsColor,
        this.withBackground = withBackground,
        this.backgroundColor = backgroundColor,
        this.borderRadius = double.parse(borderRadius!.toString());
}
