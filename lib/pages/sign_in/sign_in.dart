import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/pages/sign_in/widgets/sign_in_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildThirdPartyLogin(context),
                Center(
                  child: reusableText('Or use your email account login'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 66.h),
                  padding: EdgeInsets.only(
                    left: 25.w,
                    right: 25.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText('Email'),
                      SizedBox(
                        height: 5.h,
                      ),
                      buildTextField(
                        'Enter your email address',
                        'email',
                        'user',
                      ),
                      reusableText('Password'),
                      SizedBox(
                        height: 5.h,
                      ),
                      buildTextField(
                        'Enter your password',
                        'password',
                        'lock',
                      ),
                    ],
                  ),
                ),
                forgotpassword(),
                buildLoginAndRegButton('Log in', 'login'),
                buildLoginAndRegButton('Register', 'register'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
