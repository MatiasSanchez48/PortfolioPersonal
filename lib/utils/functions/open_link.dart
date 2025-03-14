import 'dart:html' as html;

import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

/// Launch url on web.
Future<void> lauchUrl(String linkRedSocial) async {
  final url = Uri.parse(linkRedSocial);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw Exception('Error al abrir la red social');
  }
}

/// Open email on web.
Future<void> openEmail(String email) async {
  final emailLaunchUri = Uri(
    scheme: 'mailto',
    path: email,
    queryParameters: {
      'subject': 'Consulta desde tu portafolio',
      'body': 'Hola, quiero contactarte sobre...',
    },
  );

  if (await canLaunchUrl(emailLaunchUri)) {
    await launchUrl(emailLaunchUri);
  } else {
    throw Exception('No se puede abrir la aplicación de correo');
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
    throw Exception('No se puede abrir la aplicación de correo');
  }
}
