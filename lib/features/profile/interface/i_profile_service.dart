import '../models/user_model.dart';

abstract interface class IProfileService {
  Future<UserModel> getUser();
}
