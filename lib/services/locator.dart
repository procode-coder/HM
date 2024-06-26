import 'package:get_it/get_it.dart';
import 'package:healthyme/network/api_provider.dart';

final serviceLocator = GetIt.instance;

Future<void> initServiceLocator() async {
  // v3 placeholder tile
  // serviceLocator
  //     .registerFactory<V3PlaceholderTileBloc>(() => V3PlaceholderTileBloc());

  // serviceLocator.registerFactory<PlaceholderTileRepository>(
  //     () => PlaceholderTileRepositoryImpl());
  // serviceLocator
  //     .registerFactory<PlaceholderTileUseCase>(() => PlaceholderTileUseCase());
  serviceLocator.registerLazySingleton<ApiProvider>(() => ApiProvider());
}
