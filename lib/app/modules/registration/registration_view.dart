import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:getx_registration_architecture/app/modules/registration/widgets/registration_form.dart';

import 'registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    print('rebuilt !!!!!');
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RegistrationForm(GlobalKey<FormState>()),
              SizedBox(height: 24),
              Text('Or sign up with:', textAlign: TextAlign.center),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(FontAwesomeIcons.google),
                    onPressed: controller.signUpGoogle,
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.facebook),
                    onPressed: controller.signUpFb,
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.apple),
                    onPressed: controller.signUpApple,
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    onPressed: (){},
                    child: Text('Login'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
