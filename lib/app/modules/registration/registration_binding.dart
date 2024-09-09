import 'package:get/get.dart';
import 'package:getx_registration_architecture/app/data/auth/inmemory_auth_service.dart';

import 'registration_controller.dart';

class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrationController>(
      () => RegistrationController(authService: InMemoryAuthService()),
    );
  }
}
