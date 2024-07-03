import 'package:flutter/material.dart';
import 'package:online_payment/components/base_button_widget.dart';
import 'package:online_payment/components/base_text_field_widget.dart';
import 'package:online_payment/components/custom_list_title.dart';
import 'package:online_payment/utils/app_colors.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black45,
                )),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Change Password",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BaseTextFieldWidget(
                label: "Current Password",
                icon: Icons.lock,
                obscureText: true,
                controller: TextEditingController(text: "Thierry Mouafo"),
              ),
              SizedBox(
                height: 20,
              ),
              BaseTextFieldWidget(
                label: "New Password",
                icon: Icons.lock,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                controller: TextEditingController(text: "thierry@gmail.com"),
                suffixIcon: Icons.remove_red_eye,
              ),
              SizedBox(
                height: 20,
              ),
              BaseTextFieldWidget(
                label: "Confirm New Password",
                icon: Icons.lock,
                obscureText: true,
                keyboardType: TextInputType.text,
                controller: TextEditingController(text: "thierry@gmail.com"),
              ),
              Text(
                "Both Passwords Must Match",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
              ),
              BaseButtonWidget(text: "Change Password")
            ],
          ),
        ),
      ),
    );
  }
}
