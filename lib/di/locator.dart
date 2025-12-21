import 'package:flutter_app/domain/service/different_finder_service.dart';
import '../presentation/util/input_parser.dart';
import '../data/service/different_finder_service_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<DifferentFinderService>(
    () => DifferentFinderServiceImpl(),
  );

  getIt.registerLazySingleton<InputParser>(
    () => InputParser(),
  );
}