import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';
import 'package:portfolio_personal/utils/functions/functions.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return DefaultTextStyle(
      style: TextStyle(
        color: colors.onSurface,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: context.fontFamily,
      ),
      child: Column(
        children: [
          const SizedBox(height: 50),
          const Text('Contacto'),
          const SizedBox(height: 20),
          Text(
            '¿Tienes un proyecto en mente? Me encantaría escuchar tus ideas'
            ' y ayudarte a hacerlas \nrealidad.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: colors.onSurfaceOpacity20,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 700,
                decoration: BoxDecoration(
                  color: colors.surface,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: colors.onSurfaceOpacity20,
                    width: .5,
                  ),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Envíame un mensaje',
                      style: TextStyle(
                        color: colors.onSurface,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Completa el formulario y me pondré en contacto '
                      'contigo lo antes posible.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: colors.onSurfaceOpacity50,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(
                      child: CustomTextField(label: 'Nombre'),
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(
                      child: CustomTextField(label: 'Email'),
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(
                      child: CustomTextField(label: 'Tu mensaje', maxLines: 5),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.maxFinite,
                      child: CustomTextButton(
                        background: colors.onSurface,
                        themeButton: colors.surface,
                        title: 'Enviar mensaje',
                        onPressed: () => openEmail('sanchezmati48@gmail.com'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 50),
              const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardContact(
                    iconData: Icons.email_outlined,
                    label: 'Email',
                    text: 'sanchezmati48@gmail.com',
                  ),
                  SizedBox(height: 50),
                  CardContact(
                    iconData: FontAwesome.linkedin,
                    label: 'LinkedIn',
                    text: '@Matias Sanchez',
                  ),
                  SizedBox(height: 50),
                  CardContact(
                    iconData: Icons.gamepad,
                    label: 'Itch.io',
                    text: '@matiassanchez48',
                  ),
                  SizedBox(height: 50),
                  CardContact(
                    iconData: FontAwesome.github,
                    label: 'Github',
                    text: '@MatiasSanchez48',
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
