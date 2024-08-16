// ignore_for_file: deprecated_member_use

import 'package:url_launcher/url_launcher.dart';

Future<bool> openDefaultBrowser(String uri) async {
  final url = Uri.parse(uri);
  final can = await canLaunchUrl(url);
  if (can) return launchUrl(url);
  return false;
}
