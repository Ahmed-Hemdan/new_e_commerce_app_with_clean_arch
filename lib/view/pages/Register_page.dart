import 'package:flutter/material.dart';
import 'package:new_e_commerce_app/utilities/routes.dart';
import 'package:new_e_commerce_app/view/widgets/main_button.dart';
import 'package:new_e_commerce_app/view/widgets/main_text_form_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 26.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 64,
                ),
                MainTextFormField(
                  controller: _nameController,
                  text: "Name",
                ),
                 const SizedBox(
                  height: 12,
                ),
                MainTextFormField(
                  controller: _emailController,
                  text: "Email",
                ),
                const SizedBox(
                  height: 12,
                ),
                MainTextFormField(
                  controller: _passwordController,
                  text: "Password",
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Allready have an account ? Login",
                      style: TextStyle(
                        color: Color.fromARGB(255, 75, 73, 73),
                      ),
                    ),
                  ),
                ),
                MainButton(text: "Sign up", onPressed: () {}),
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or sign up with social account ",
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
