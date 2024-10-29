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
import 'package:watt_hub/config/network/connectivity/connectivity_checker.dart'
    as _i618;
import 'package:watt_hub/config/network/dio_client/dio_client.dart' as _i138;
import 'package:watt_hub/config/network/otp_service.dart' as _i60;
import 'package:watt_hub/data/local/filter_storage/filter_storage.dart'
    as _i749;
import 'package:watt_hub/data/local/filter_storage/filter_storage_impl.dart'
    as _i309;
import 'package:watt_hub/data/local/token_storage/token_storage.dart' as _i231;
import 'package:watt_hub/data/local/token_storage/token_storage_impl.dart'
    as _i957;
import 'package:watt_hub/data/remote/auth_remote/auth_remote.dart' as _i1029;
import 'package:watt_hub/data/remote/station_remote/station_remote.dart'
    as _i920;
import 'package:watt_hub/data/remote/user_remote/user_remote.dart' as _i87;
import 'package:watt_hub/data/repository/auth_repository.dart' as _i441;
import 'package:watt_hub/data/repository/station_repository.dart' as _i198;
import 'package:watt_hub/data/repository/user_repository.dart' as _i468;
import 'package:watt_hub/presentation/screens/add_station/bloc/add_station_bloc.dart'
    as _i767;
import 'package:watt_hub/presentation/screens/app_loading/bloc/app_loading_bloc.dart'
    as _i536;

import 'package:watt_hub/presentation/screens/filter/bloc/filter_bloc.dart'
    as _i293;
import 'package:watt_hub/presentation/screens/home/bloc/home_bloc.dart'
    as _i944;
import 'package:watt_hub/presentation/screens/onboarding/bloc/onboarding_bloc.dart'
    as _i764;
import 'package:watt_hub/presentation/screens/sign_up/bloc/sign_up_bloc.dart'
    as _i141;
import 'package:watt_hub/presentation/screens/station_info/bloc/station_info_bloc.dart'
    as _i400;
import 'package:watt_hub/presentation/screens/verification/bloc/verification_bloc.dart'
    as _i298;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioClient = _$DioClient();
    gh.factory<_i60.OtpService>(() => _i60.OtpService());
    gh.factory<_i536.AppLoadingBloc>(() => _i536.AppLoadingBloc());

    gh.factory<_i293.FilterBloc>(() => _i293.FilterBloc());
    gh.factory<_i944.HomeBloc>(() => _i944.HomeBloc());
    gh.factory<_i764.OnboardingBloc>(() => _i764.OnboardingBloc());
    gh.factory<_i141.SignUpBloc>(() => _i141.SignUpBloc());
    gh.factory<_i400.StationInfoBloc>(() => _i400.StationInfoBloc());
    gh.factory<_i298.VerificationBloc>(() => _i298.VerificationBloc());
    gh.factory<_i767.AddStationBlock>(() => _i767.AddStationBlock());
    gh.lazySingleton<_i618.ConnectivityChecker>(
        () => _i618.ConnectivityChecker());

    gh.lazySingleton<_i361.Dio>(() => dioClient.dio());
    gh.lazySingleton<_i441.AuthRepository>(() => _i441.AuthRepository());
    gh.lazySingleton<_i198.StationRepository>(() => _i198.StationRepository());
    gh.lazySingleton<_i468.UserRepository>(() => _i468.UserRepository());
    gh.factory<_i231.TokenStorage>(() => _i957.TokenStorageImpl());
    gh.lazySingleton<_i1029.AuthRemoteApi>(
        () => _i1029.AuthRemoteApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i920.StationRemoteApi>(
        () => _i920.StationRemoteApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i87.UserRemoteApi>(
        () => _i87.UserRemoteApi(gh<_i361.Dio>()));
    gh.factory<_i749.FilterStorage>(() => _i309.FilterStorageImpl());
    return this;
  }
}

class _$DioClient extends _i138.DioClient {}
