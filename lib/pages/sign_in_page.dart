import 'package:flutter/material.dart';
import 'package:online_payment/utils/app_colors.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: AppBar(
            elevation: 0,
            forceMaterialTransparency: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black45,
                ),
              ),
            ),
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Email address',
              style: TextStyle(
                fontWeight: FontWeight.w200,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                filled: false,
                alignLabelWithHint: true,
                border: InputBorder.none,
                hintText: 'Enter your email',
              ),
            ),
            Divider(
              height: 3,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Password',
              style: TextStyle(
                fontWeight: FontWeight.w200,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock,
                  color: Colors.grey[400],
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey[400],
                ),
                filled: false,
                alignLabelWithHint: true,
                border: InputBorder.none,
                hintText: 'Enter your password',
              ),
            ),
            Divider(
              height: 3,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () => Navigator.popAndPushNamed(context, '/onboarding3'),
              child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                child: Center(
                    child: Text('Sign In',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold))),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I'am a new user.",
                    style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/signup');
                    },
                    child: Text(
                      "Sign up",
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
    );
  }
}
