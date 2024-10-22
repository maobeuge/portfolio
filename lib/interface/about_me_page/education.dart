import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:portfolio/constants/ui_helper.dart';
import 'package:portfolio/services/language/language_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: size.width > 1300
                  ? EdgeInsets.zero
                  : const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                state.texts["educationTitle"],
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            if (size.width > 1300)
              const SizedBox(
                height: 60,
              ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => launchUrl(Uri.parse(
                    "https://www.epitech.eu/?utm_source=google&utm_medium=cpc&utm_campaign=20775344522&utm_content=156560137420&utm_term&gad_source=1&gclid=CjwKCAjw68K4BhAuEiwAylp3kssrVbCG3lad34a3vBr9taYCrYITqE5JMMa9NqRo0LKNMhUHFVCb5BoCBqsQAvD_BwE")),
                child: fancyContainer(
                  size: size,
                  maxWidth: 600,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GlowText(
                            state.texts['educationEpitech'],
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(fontSize: 20),
                          ),
                          Text(
                            state.texts['educationEpitechYear'],
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(fontSize: 18),
                          ),
                        ],
                      ),
                      Text(
                        state.texts['educationEpitechDiploma'],
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (size.width > 1300)
              const SizedBox(
                height: 40,
              ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => launchUrl(Uri.parse(
                    "https://www.ef.com/wwen/ils/destinations/korea/seoul/")),
                child: fancyContainer(
                  size: size,
                  maxWidth: 600,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GlowText(
                            state.texts['educationEF'],
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(fontSize: 20),
                          ),
                          Text(
                            state.texts['educationEFYear'],
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(fontSize: 18),
                          ),
                        ],
                      ),
                      Text(
                        state.texts['educationEFDiploma'],
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
