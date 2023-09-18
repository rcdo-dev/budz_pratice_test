import '../interfaces/i_profile_service.dart';
import '../models/client_model.dart';

class ProfileRepository {
  final IProfileService service;

  ProfileRepository({
    required this.service,
  });

  Future<ClientModel?> getClient() async {
    var response = await service.get();
    if (response != null) {
      return response;
    }
    return null;
  }
}
