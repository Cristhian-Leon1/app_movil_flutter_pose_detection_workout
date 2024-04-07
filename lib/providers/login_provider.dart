import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController password2Controller = TextEditingController();

  bool viewPassword = false;
  bool fragmentState = false;

  void togglePasswordVisibility() {
    viewPassword = !viewPassword;
    notifyListeners();
  }

  void toggleFragmentState() {
    fragmentState = !fragmentState;
    notifyListeners();
  }

  login (TextEditingController emailController, TextEditingController passwordController) {
    if(emailController.text.isEmpty || passwordController.text.isEmpty) {
      print('Email or password is empty');
    } else if (emailController.text == 'crisis@gmail.com' && passwordController.text == 'crisis') {
      print('Login success');
    } else {
      print('Login failed');
    }
  }

  void disposeControllers() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    password2Controller.dispose();
  }
}