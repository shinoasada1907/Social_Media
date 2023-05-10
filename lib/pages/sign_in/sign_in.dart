import 'package:flutter/material.dart';
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
              children: [
                buildThirdPartyLogin(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
