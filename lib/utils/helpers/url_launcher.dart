import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL(String url) async {
  final url = Uri.parse(
      'https://termsfeed.com/live/cc373245-d9b0-410d-960c-db897b26bffc');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  }
}
