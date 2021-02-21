import 'package:flutter/material.dart';
import 'package:ramen_stall_tracker/src/utils/app_styles.dart';

class RoundedTextField extends StatelessWidget {
  RoundedTextField(
      {this.icon,
      @required this.label,
      this.obsecureText,
      this.inputType,
      this.controller,
      this.prefixText,
      this.onChanged,
      this.validator,
      this.suffixOnPressed});
  final IconData icon;
  final String label;
  final TextEditingController controller;
  final bool obsecureText;
  final TextInputType inputType;
  final String prefixText;
  final VoidCallback suffixOnPressed;
  final validator;
  final onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      controller: controller,
      obscureText: obsecureText ?? false,
      keyboardType: inputType ?? TextInputType.text,
      validator: validator,
      onChanged: onChanged,
      style: TextStyle(fontSize: 14),
      decoration: InputDecoration(
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10.0)),
        fillColor: Colors.white,
        suffixIcon: suffixOnPressed != null
            ? IconButton(
                icon: Icon(Icons.remove_red_eye_outlined),
                onPressed: suffixOnPressed)
            : null,
        prefixStyle: TextStyle(color: Colors.red),
        prefixIcon: icon != null
            ? Icon(icon, color: Colors.red)
            : prefixText != null
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          prefixText,
                          style: TextStyle(color: Colors.red),
                        ),
                      )
                    ],
                  )
                : null,
        hintText: label ?? "Unknown",
        contentPadding: AppStyles.paddingSmallAll,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.black)),
      ),
    );
  }
}
