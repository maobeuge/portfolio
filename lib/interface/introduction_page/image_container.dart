import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:portfolio/constants/ui_helper.dart';
import 'package:portfolio/services/language/language_cubit.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        return fancyContainer(
          maxWidth: 900,
          size: size,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                state.texts["name"]!.toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              GlowText(
                state.texts["job"]!.toUpperCase(),
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Builder(builder: (context) {
                  final List<InlineSpan> description =
                      getDescription(state.texts["description"], context);

                  return RichText(
                    text: TextSpan(
                      children: description,
                    ),
                  );
                }),
              ),
            ],
          ),
        );
      },
    );
  }
}
