// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/datasource/local/word/word_local_datasource.dart' as _i452;
import '../../data/datasource/remote/resource/resources_remote_datasource.dart'
    as _i416;
import '../../data/datasource/remote/word/word_remote_datasource.dart' as _i467;
import '../../data/repository/resource/resources_repository.dart' as _i742;
import '../../data/repository/word/word_repository.dart' as _i547;
import '../../domain/word/info/get_word_info_use_case.dart' as _i91;
import '../../presentation/config/theme/bloc/theme_bloc.dart' as _i612;
import '../../presentation/modules/definition/bloc/definition_bloc.dart'
    as _i257;
import '../../presentation/modules/splash/bloc/splash_bloc.dart' as _i817;
import '../routing/app_route_factory.dart' as _i410;
import '../routing/app_router.dart' as _i282;
import '../routing/provider/definition_page_provider.dart' as _i302;
import '../routing/provider/splash_page_provider.dart' as _i107;
import 'network_module.dart' as _i567;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    gh.factory<_i361.Dio>(() => networkModule.provideDio());
    gh.factory<_i107.SplashPageProvider>(() => _i107.SplashPageProvider());
    gh.factory<_i452.WordLocalDataSource>(() => _i452.WordLocalDataSource());
    gh.factory<_i817.SplashBloc>(() => _i817.SplashBloc());
    gh.factory<_i612.ThemeBloc>(() => _i612.ThemeBloc());
    gh.factory<_i467.WordRemoteDataSource>(
      () => _i467.WordRemoteDataSource(dio: gh<_i361.Dio>()),
    );
    gh.factory<_i416.ResourceRemoteDataSource>(
      () => _i416.ResourceRemoteDataSource(dio: gh<_i361.Dio>()),
    );
    gh.factory<_i547.WordRepository>(
      () => _i547.WordRepository(
        remoteDataSource: gh<_i467.WordRemoteDataSource>(),
        localDataSource: gh<_i452.WordLocalDataSource>(),
      ),
    );
    gh.factory<_i91.GetWordInfoUseCase>(
      () => _i91.GetWordInfoUseCase(repository: gh<_i547.WordRepository>()),
    );
    gh.factory<_i742.ResourceRepository>(
      () => _i742.ResourceRepository(
        remoteDataSource: gh<_i416.ResourceRemoteDataSource>(),
      ),
    );
    gh.factory<_i302.DefinitionPageProvider>(
      () => _i302.DefinitionPageProvider(
        getWordInfoUseCase: gh<_i91.GetWordInfoUseCase>(),
        resourceRepository: gh<_i742.ResourceRepository>(),
      ),
    );
    gh.factory<_i257.DefinitionBloc>(
      () => _i257.DefinitionBloc(
        getWordInfoUseCase: gh<_i91.GetWordInfoUseCase>(),
        resourceRepository: gh<_i742.ResourceRepository>(),
      ),
    );
    gh.lazySingleton<_i410.AppRouteFactory>(
      () => _i410.AppRouteFactory(
        definitionPageProvider: gh<_i302.DefinitionPageProvider>(),
        splashPageProvider: gh<_i107.SplashPageProvider>(),
      ),
    );
    gh.lazySingleton<_i282.AppRouter>(
      () => _i282.AppRouter(routeFactory: gh<_i410.AppRouteFactory>()),
    );
    return this;
  }
}

class _$NetworkModule extends _i567.NetworkModule {}
