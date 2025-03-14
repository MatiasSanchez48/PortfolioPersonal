import 'dart:html' as html;

import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

/// Launch url on web.
Future<void> lauchUrl(String linkRedSocial) async {
  final url = Uri.parse(linkRedSocial);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw Exception('Error opening the social network');
  }
}

/// Open email on web.
Future<void> openEmail(String email) async {
  final emailLaunchUri = Uri(
    scheme: 'mailto',
    path: email,
    queryParameters: {
      'subject': 'Consult from your portfolio',
      'body': 'Hello, I would like to contact you about...',
    },
  );

  if (await canLaunchUrl(emailLaunchUri)) {
    await launchUrl(emailLaunchUri);
  } else {
    throw Exception('Cannot open the mail application');
  }
}

/// Open pdf on web and download.
Future<void> openPDF() async {
  try {
    final data = await rootBundle.load('assets/pdf/cv.pdf');
    final bytes = data.buffer.asUint8List();

    final blob = html.Blob([bytes], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);

    html.AnchorElement(href: url)
      ..setAttribute('download', 'cv.pdf')
      ..click();

    html.Url.revokeObjectUrl(url);
  } catch (e) {
    throw Exception('Cannot open the CV in the application');
  }
}
