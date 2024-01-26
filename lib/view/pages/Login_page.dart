import 'package:flutter/material.dart';
import 'package:new_e_commerce_app/utilities/routes.dart';
import 'package:new_e_commerce_app/view/widgets/main_button.dart';
import 'package:new_e_commerce_app/view/widgets/main_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, 
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 26.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 64,
                ),
                MainTextFormField(
                  controller: _emailController,
                  text: "Email",
                ),
                MainTextFormField(
                  controller: _passwordController,
                  text: "Password",
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot your password ?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 134, 129, 129),
                      ),
                    ),
                  ),
                ),
                MainButton(text: "Login", onPressed: () {
                  if(_formKey.currentState!.validate()){
                    Navigator.of(context).pushNamed(AppRoutes.navBarPage);
                  }
                }),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.registerPage);
                    },
                    child: const Text(
                      "Don't have an account ? Register",
                      style: TextStyle(
                        color: Color.fromARGB(255, 134, 129, 129),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or login with social account ",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Icon(Icons.add),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Container(
                      height: 70,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
