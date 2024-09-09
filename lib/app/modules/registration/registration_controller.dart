import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_registration_architecture/app/common/utils/validator.dart';
import 'package:getx_registration_architecture/app/data/auth/auth_service.dart';

class RegistrationController extends GetxController {

   final AuthService authService;
   RegistrationController({required this.authService});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

   void signUp(){
    authService.signUp(emailController.text, passwordController.text);
   }

   void signUpGoogle() {
    authService.signUpGoogle();
   }

   void signUpApple() {
    authService.signUpApple();
   }
   void signUpFb() {
    authService.signUpFb();
   }

   String? validateEmail(email){
    return Validator.validateEmail(email);
   }

   String? validatePassword(password){
     return Validator.validatePassword(password); 
   }

    String? confirmPassword(password){
     return Validator.confirmPassword(passwordController.text, password );
   }


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

}
