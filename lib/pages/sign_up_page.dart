import 'package:flutter/material.dart';
import 'package:online_payment/components/base_button_widget.dart';
import 'package:online_payment/components/base_text_field_widget.dart';
import 'package:online_payment/utils/app_colors.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 50),
          child: AppBar(
            elevation: 0,
            forceMaterialTransparency: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black45,
                ),
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              BaseTextFieldWidget(
                label: 'Full name',
                icon: Icons.person,
                hintText: 'Enter your full name',
              ),
              const SizedBox(
                height: 25,
              ),
              BaseTextFieldWidget(
                label: 'Phone Number',
                icon: Icons.phone,
                keyboardType: TextInputType.phone,
                hintText: 'Enter your Phone Number',
              ),
              const SizedBox(
                height: 25,
              ),
              BaseTextFieldWidget(
                label: 'Email address',
                icon: Icons.email,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter your email',
              ),
              const SizedBox(
                height: 25,
              ),
              BaseTextFieldWidget(
                label: 'Password',
                icon: Icons.lock,
                hintText: 'Enter your password',
                suffixIcon: Icons.remove_red_eye,
              ),
              const SizedBox(
                height: 50,
              ),
              BaseButtonWidget(
                  onTap: () => Navigator.popAndPushNamed(context, '/home'),
                  text: "Sign Up"),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account.",
                      style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, '/signin');
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
