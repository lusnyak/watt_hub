// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:watt_hub/config/network/otp_service.dart' as _i60;
import 'package:watt_hub/presentation/screens/filter/bloc/filter_bloc.dart'
    as _i293;
import 'package:watt_hub/presentation/screens/home/bloc/home_bloc.dart'
    as _i944;
import 'package:watt_hub/presentation/screens/onboarding/bloc/onboarding_bloc.dart'
    as _i764;
import 'package:watt_hub/presentation/screens/sign_up/bloc/sign_up_bloc.dart'
    as _i141;
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
    gh.factory<_i60.OtpService>(() => _i60.OtpService());
    gh.factory<_i293.FilterBloc>(() => _i293.FilterBloc());
    gh.factory<_i944.HomeBloc>(() => _i944.HomeBloc());
    gh.factory<_i764.OnboardingBloc>(() => _i764.OnboardingBloc());
    gh.factory<_i141.SignUpBloc>(() => _i141.SignUpBloc());
    gh.factory<_i298.VerificationBloc>(
        () => _i298.VerificationBloc(gh<_i60.OtpService>()));
    return this;
  }
}
