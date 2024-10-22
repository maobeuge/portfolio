import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/interface/about_me_page/education.dart';
import 'package:portfolio/interface/about_me_page/experience.dart';
import 'package:portfolio/services/language/language_cubit.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        return SizedBox(
          width: size.width,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 1500,
              minHeight: size.height,
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      "${state.texts["aboutTitle"].toString().toUpperCase()}''",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(
                    height: size.width * .03,
                  ),
                  Wrap(
                    spacing: size.width * .05,
                    alignment: WrapAlignment.spaceBetween,
                    children: const [
                      Education(),
                      Experience(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
