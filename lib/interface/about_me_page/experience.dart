import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:portfolio/constants/ui_helper.dart';
import 'package:portfolio/services/language/language_cubit.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

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
                state.texts["experienceTitle"],
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
                onTap: () {},
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
                            state.texts['experienceFMS'],
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(fontSize: 20),
                          ),
                          Text(
                            state.texts['experienceFMSYear'],
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(fontSize: 18),
                          ),
                        ],
                      ),
                      Text(
                        state.texts['experienceFMSPosition'],
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
                onTap: () {},
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
                            state.texts['experienceFE'],
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(fontSize: 20),
                          ),
                          Text(
                            state.texts['experienceFEYear'],
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(fontSize: 18),
                          ),
                        ],
                      ),
                      Text(
                        state.texts['experienceFEPosition'],
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
                onTap: () {},
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
                            state.texts['experienceSI'],
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(fontSize: 20),
                          ),
                          Text(
                            state.texts['experienceSIYear'],
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(fontSize: 18),
                          ),
                        ],
                      ),
                      Text(
                        state.texts['experienceSIPosition'],
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
                onTap: () {},
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
                            state.texts['experienceGAAPS'],
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(fontSize: 20),
                          ),
                          Text(
                            state.texts['experienceGAAPSYear'],
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(fontSize: 18),
                          ),
                        ],
                      ),
                      Text(
                        state.texts['experienceGAAPSPosition'],
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
                onTap: () {},
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
                            state.texts['experienceADEO'],
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(fontSize: 20),
                          ),
                          Text(
                            state.texts['experienceADEOYear'],
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(fontSize: 18),
                          ),
                        ],
                      ),
                      Text(
                        state.texts['experienceADEOPosition'],
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
