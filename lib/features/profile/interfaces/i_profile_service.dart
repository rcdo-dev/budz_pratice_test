import '../models/client_model.dart';

abstract interface class IProfileService {
  Future<ClientModel?> get();
}
