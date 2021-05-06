abstract class HospitalService {
  Future<dynamic> getHospitalNearby(double latitude, double longitude);
  Future<dynamic> getPrices(String name);
}
