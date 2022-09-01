import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword = false,
  required String label,
  required String hint,
  required IconData prefix,
  required IconData suffix,
  required Function()? suffixPressed,
  bool isClickable = true,
  required validate,
  bool obscureText=false,

}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: true,
      validator: validate,
      enabled: isClickable,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint ,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null ? IconButton( onPressed: suffixPressed , icon: Icon( suffix,),)  : null,
        border: OutlineInputBorder(),
      ),
    );
