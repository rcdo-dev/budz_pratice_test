import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';
import 'core/app_module.dart';

void main() {
  debugPrint(Modular.to.path);

  return runApp(
    ModularApp(module: AppModule(), child: const AppWidget()),
  );
}
