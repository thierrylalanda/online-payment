import 'package:flutter/material.dart';

class BaseTextFieldWidget extends StatelessWidget {
  BaseTextFieldWidget(
      {super.key,
      required this.label,
      this.hintText,
      this.icon,
      this.keyboardType = TextInputType.text,
      this.value,
      this.controller,
      this.obscureText = false,
      this.suffixIcon});
  final String label;
  final String? hintText;
  final String? value;
  final IconData? icon;
  final IconData? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w200,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        TextField(
          keyboardType: keyboardType,
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            icon: icon != null
                ? Icon(
                    icon,
                    color: Colors.grey[400],
                  )
                : null,
            suffixIcon: suffixIcon != null
                ? Icon(
                    suffixIcon,
                    color: Colors.grey[400],
                  )
                : null,
            filled: false,
            alignLabelWithHint: true,
            border: InputBorder.none,
            hintText: hintText ?? '',
          ),
        ),
        Divider(
          height: 3,
          color: Colors.grey[400],
        ),
      ],
    );
  }
}
