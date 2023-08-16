import 'package:diamond_hris/shared/shared_values.dart';
import 'package:diamond_hris/ui/pages/register_page.dart';
import 'package:diamond_hris/ui/widgets/elevated_button_custom.dart';
import 'package:diamond_hris/ui/widgets/text_field_custom.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 48),
              Image.asset(
                'assets/ic_logo.png',
                width: 60,
                height: 48,
              ),
              const SizedBox(height: 13),
              Text(
                'Wellcome Back 👋\nto DiamondHR',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(height: 38),
              Text(
                'Sign In',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                'Manage your employees to achieve\na bigger goals for your company',
                style: greyTextStyle,
              ),
              const SizedBox(height: 13),
              Container(
                padding: const EdgeInsets.all(defaultMargin),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(26),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFieldCustom(label: "Email Address"),
                    TextFieldCustom(
                      label: "Password",
                      obsecureText: true,
                    ),
                    SizedBox(height: 14),
                    ElevatedButtonCustom(label: 'Sign In'),
                  ],
                ),
              ),
              const SizedBox(height: 69),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn’t have an account? ',
                    style: greyTextStyle,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Register',
                      style: primaryTextStyle,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
