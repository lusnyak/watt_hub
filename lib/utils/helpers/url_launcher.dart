import 'package:url_launcher/url_launcher_string.dart';

Future<void> launchURL(String url) async {
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  }
}
