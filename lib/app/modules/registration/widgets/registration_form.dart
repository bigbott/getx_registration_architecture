import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_registration_architecture/app/modules/registration/registration_controller.dart';

class RegistrationForm extends GetView<RegistrationController> {
  final GlobalKey<FormState> formKey;
  const RegistrationForm(this.formKey, {super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: controller.emailController,
                decoration: InputDecoration(labelText: 'Email'.tr),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  return controller.validateEmail(value);
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: controller.passwordController,
                decoration: InputDecoration(labelText: 'Password'.tr),
                obscureText: true,
                validator: (value) {
                  return controller.validatePassword(value);
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: controller.confirmPasswordController,
                decoration: InputDecoration(labelText: 'Confirm Password'.tr),
                obscureText: true,
                validator: (value) {
                  return controller.confirmPassword(value);
                },
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  bool isValid = formKey.currentState!.validate();
                  if (isValid) {
                    controller.signUp();
                  }
                },
                child: Text('Register'.tr),
              ),
            ]));
  }
}
