import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:portfolio_personal/extensions/extensions.dart';
import 'package:portfolio_personal/l10n/l10n.dart';
import 'package:portfolio_personal/pages/dashboard/widgets/widgets.dart';
import 'package:portfolio_personal/utils/functions/functions.dart';

/// {@template ContactMe}
/// Contact me section of dashboard with form.
/// {@endtemplate}
class ContactMe extends StatelessWidget {
  /// {@macro ContactMe}
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final l10n = context.l10n;

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
          Text(l10n.commonContactText),
          const SizedBox(height: 20),
          Text(
            l10n.contactPageDescription,
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
                      l10n.contactPageSendMessage,
                      style: TextStyle(
                        color: colors.onSurface,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      l10n.contactPageFormDescription,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: colors.onSurfaceOpacity50,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      child: CustomTextField(label: l10n.commonNameText),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      child: CustomTextField(label: l10n.commonEmailText),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      child: CustomTextField(
                          label: l10n.commonMessageText, maxLines: 5),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.maxFinite,
                      child: CustomTextButton(
                        background: colors.onSurface,
                        themeButton: colors.surface,
                        title: l10n.contactPageSendMessageButton,
                        onPressed: () => openEmail('sanchezmati48@gmail.com'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 50),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardContact(
                    iconData: Icons.email_outlined,
                    label: l10n.commonEmailText,
                    text: 'sanchezmati48@gmail.com',
                  ),
                  const SizedBox(height: 50),
                  const CardContact(
                    iconData: FontAwesome.linkedin,
                    label: 'LinkedIn',
                    text: '@Matias Sanchez',
                  ),
                  const SizedBox(height: 50),
                  const CardContact(
                    iconData: Icons.gamepad,
                    label: 'Itch.io',
                    text: '@matiassanchez48',
                  ),
                  const SizedBox(height: 50),
                  const CardContact(
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
