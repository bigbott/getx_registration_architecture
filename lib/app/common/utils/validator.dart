import 'dart:core';

class Validator {
  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Please enter your email';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Please enter a password';
    }
    if (password.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  static String? confirmPassword(String? password, String? repeatPassword) {
    if (password == null || password.isEmpty) {
      return 'Please confirm your password';
    }
    if (password != repeatPassword) {
      return 'Passwords do not match';
    }
    return null;
  }
}
