import 'package:injectable/injectable.dart';

@injectable
class OtpService {
  Future<void> resendOtp() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  Future<bool> verifyOtp(String otpCode) async {
    await Future.delayed(const Duration(seconds: 2));
    return otpCode == '1234';
  }
}
