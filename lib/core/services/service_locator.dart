import 'package:get_it/get_it.dart';
import 'package:hospital_finder_app/core/services/hospital_service.dart';
import 'package:hospital_finder_app/core/services/hospitals/hospital_service_hybrid.dart';

GetIt locator = GetIt.instance;

setupServiceLocator() {
  locator.registerLazySingleton<HospitalService>(() => HospitalServiceHybrid());
}
