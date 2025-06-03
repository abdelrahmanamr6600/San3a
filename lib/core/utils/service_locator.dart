
import 'package:get_it/get_it.dart';
final sl = GetIt.instance;
void setupServiceLocator() {
  // sl.registerFactory(() => Dio(BaseOptions(baseUrl: baseUrl)));
  // sl.registerFactory(() => ApisService(sl<Dio>()));
  // sl.registerFactory(() => RegisterRepo(sl<ApisService>()));

  // sl.registerFactory<RegisterCubit>(
  //     () => RegisterCubit(sl<RegisterRepo>()));
}
