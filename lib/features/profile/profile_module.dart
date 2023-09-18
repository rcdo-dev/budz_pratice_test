import 'package:budz_pratice_test/features/profile/interfaces/i_profile_service.dart';
import 'package:budz_pratice_test/features/profile/repositories/profile_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'services/profile_service.dart';
import 'views/profile_page.dart';

class ProfileModule extends Module {
  @override
  void binds(i) {
    i.add<IProfileService>(ProfileService.new);
    i.add(ProfileRepository.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const ProfilePage());
  }
}
