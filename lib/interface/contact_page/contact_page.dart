import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:portfolio/constants/ui_helper.dart';
import 'package:portfolio/services/language/language_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = !(size.width > 1300);

    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        return SizedBox(
          width: size.width,
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1500,
                minHeight: size.height,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "${state.texts["contactTitle"].toString().toUpperCase()}''",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(
                      height: isMobile ? 32.0 : size.width * .03,
                    ),
                    Text(
                      state.texts["socialNetworkTitle"],
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: isMobile ? 24.0 : size.width * .02,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => launchUrl(Uri.parse(
                            "https://linkedin.com/in/romain-floriani")),
                        behavior: HitTestBehavior.opaque,
                        child: fancyContainer(
                          size: size,
                          maxWidth: 650,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Image.asset(
                                  "assets/linkedin.webp",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: isMobile
                                    ? const EdgeInsets.only(left: 32.0)
                                    : const EdgeInsets.only(left: 12.0),
                                child: GlowText(
                                  state.texts["socialNetworkLinkedin"],
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: isMobile ? 24.0 : size.width * .02,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () =>
                            launchUrl(Uri.parse("https://github.com/maobeuge")),
                        behavior: HitTestBehavior.opaque,
                        child: fancyContainer(
                          size: size,
                          maxWidth: 650,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Image.asset(
                                  "assets/github.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: isMobile
                                    ? const EdgeInsets.only(left: 32.0)
                                    : const EdgeInsets.only(left: 12.0),
                                child: GlowText(
                                  state.texts["socialNetworkGithub"],
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: isMobile ? 24.0 : size.width * .02,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => launchUrl(
                            Uri.parse("mailto:romainflorianipro@gmail.com")),
                        behavior: HitTestBehavior.opaque,
                        child: fancyContainer(
                          size: size,
                          maxWidth: 650,
                          child: GlowText(
                            state.texts["socialNetworkMail"],
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
