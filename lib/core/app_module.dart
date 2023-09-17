import 'package:flutter_modular/flutter_modular.dart';

import '../features/profile/profile_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: ProfileModule());
  }
}
