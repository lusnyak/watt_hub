// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:watt_hub/presentation/screens/splash/my_service.dart' as _i770;
import 'package:watt_hub/presentation/screens/users_list/bloc/user_bloc.dart'
    as _i1067;

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
    gh.factory<_i770.MyService>(() => _i770.MyService());
    gh.factory<_i1067.UserBloc>(() => _i1067.UserBloc());
    return this;
  }
}
