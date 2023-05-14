import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_app/utils/colors.dart';
import 'package:instagram_clone_app/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Container(),
              ),
              //svg image
              SvgPicture.asset(
                'assets/ic.svg',
                colorFilter:
                    const ColorFilter.mode(primaryColor, BlendMode.srcIn),
                height: 64,
              ),

              //text field import for email
              TextFieldInput(
                hintText: 'Enter Your Email ',
                textInputType: TextInputType.emailAddress,
                texteditingcontroller: _emailController,
              ),
              const SizedBox(height: 24),
              //text field import for password
              TextFieldInput(
                hintText: 'Enter Your Password ',
                textInputType: TextInputType.text,
                texteditingcontroller: _passwordController,
                isPass: true,
              ),
              const SizedBox(height: 24),

              //button login
              InkWell(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    color: blueColor,
                  ),
                  child: const Text('Log In '),
                ),
              ),
              const SizedBox(height: 12),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              //transitioning to signning up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text("Don't have an account?"),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
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
