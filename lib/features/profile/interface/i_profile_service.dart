import 'package:budz_pratice_test/features/profile/models/user_model.dart';

abstract interface class IProfileService {
  Future<UserModel> getUser();
}
