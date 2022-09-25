import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUperCase = true,
  @required String? text,
  @required Function()? function,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUperCase ? (text ?? 'login').toUpperCase() : (text ?? 'login'),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

 ///******************************************************************************

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required String? Function(String?)? validate,
  Function(String)? onSubmit,
  Function(String)? onChange,
  Function()? onTap,
  Function()? suffixPressed,
  bool isPassword = false,
  String? labelText,
  IconData? prefix,
  IconData? suffix,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.grey[300],
      ),
      child: TextFormField(
        validator: validate,
        controller: controller,
        keyboardType: type,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        obscureText: isPassword,
        onTap: onTap,
        decoration: InputDecoration(
          labelText: labelText ?? 'Email Address',
          prefixIcon: Icon(prefix ?? Icons.email),
          suffixIcon: IconButton(
            icon: Icon(suffix),
            onPressed: suffixPressed,
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
        ),
      ),
    );