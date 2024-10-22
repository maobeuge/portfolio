import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants/ui_helper.dart';
import 'package:portfolio/services/index/index_cubit.dart';
import 'package:portfolio/services/language/language_cubit.dart';

class PortfolioAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PortfolioAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, languageState) {
        return BlocBuilder<IndexCubit, IndexState>(
          builder: (context, state) {
            return AppBar(
              backgroundColor: AppColors.backgroundColor,
              forceMaterialTransparency: true,
              leadingWidth: size.width > 1300 ? 230 : double.infinity,
              centerTitle: true,
              leading: Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: size.width > 1300
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/flutter_icon.svg",
                            colorFilter: ColorFilter.mode(
                                AppColors.secondaryColor, BlendMode.srcIn),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              languageState.texts["name"],
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ),
                        ],
                      )
                    : Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                              onPressed: () => context
                                  .read<IndexCubit>()
                                  .onChangeIndex(newIndex: PageIndex.home),
                              style: Theme.of(context).textButtonTheme.style,
                              child: Text(
                                languageState.texts["homeButton"],
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                      fontSize: 14,
                                      color: AppColors.secondaryColor
                                          .withOpacity(.8),
                                    ),
                              ),
                            ),
                            TextButton(
                              onPressed: () => context
                                  .read<IndexCubit>()
                                  .onChangeIndex(newIndex: PageIndex.about),
                              style: Theme.of(context).textButtonTheme.style,
                              child: Text(
                                languageState.texts["aboutButton"],
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                      fontSize: 14,
                                      color: AppColors.secondaryColor
                                          .withOpacity(.8),
                                    ),
                              ),
                            ),
                            TextButton(
                              onPressed: () => context
                                  .read<IndexCubit>()
                                  .onChangeIndex(newIndex: PageIndex.workflow),
                              style: Theme.of(context).textButtonTheme.style,
                              child: Text(
                                languageState.texts["workflowButton"],
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                      fontSize: 14,
                                      color: AppColors.secondaryColor
                                          .withOpacity(.8),
                                    ),
                              ),
                            ),
                            TextButton(
                              onPressed: () => context
                                  .read<IndexCubit>()
                                  .onChangeIndex(newIndex: PageIndex.contact),
                              style: Theme.of(context).textButtonTheme.style,
                              child: Text(
                                languageState.texts["contactButton"],
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                      fontSize: 14,
                                      color: AppColors.secondaryColor
                                          .withOpacity(.8),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
              title: size.width > 1300
                  ? Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                            onPressed: () => context
                                .read<IndexCubit>()
                                .onChangeIndex(newIndex: PageIndex.home),
                            style: Theme.of(context).textButtonTheme.style,
                            child: Text(
                              languageState.texts["homeButton"],
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    fontSize: 18,
                                    color: AppColors.secondaryColor
                                        .withOpacity(.8),
                                  ),
                            ),
                          ),
                          const SizedBox(width: 12.0),
                          TextButton(
                            onPressed: () => context
                                .read<IndexCubit>()
                                .onChangeIndex(newIndex: PageIndex.about),
                            style: Theme.of(context).textButtonTheme.style,
                            child: Text(
                              languageState.texts["aboutButton"],
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    fontSize: 18,
                                    color: AppColors.secondaryColor
                                        .withOpacity(.8),
                                  ),
                            ),
                          ),
                          const SizedBox(width: 12.0),
                          TextButton(
                            onPressed: () => context
                                .read<IndexCubit>()
                                .onChangeIndex(newIndex: PageIndex.workflow),
                            style: Theme.of(context).textButtonTheme.style,
                            child: Text(
                              languageState.texts["workflowButton"],
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    fontSize: 18,
                                    color: AppColors.secondaryColor
                                        .withOpacity(.8),
                                  ),
                            ),
                          ),
                          const SizedBox(width: 12.0),
                          TextButton(
                            onPressed: () => context
                                .read<IndexCubit>()
                                .onChangeIndex(newIndex: PageIndex.contact),
                            style: Theme.of(context).textButtonTheme.style,
                            child: Text(
                              languageState.texts["contactButton"],
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    fontSize: 18,
                                    color: AppColors.secondaryColor
                                        .withOpacity(.8),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : null,
              actions: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => context
                        .read<LanguageCubit>()
                        .onChangeLanguage(language: LanguageEnum.fr),
                    behavior: HitTestBehavior.opaque,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.transparent,
                      child: SizedBox(
                        width: 25,
                        child: Image.asset(
                          "assets/french.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => context
                        .read<LanguageCubit>()
                        .onChangeLanguage(language: LanguageEnum.en),
                    behavior: HitTestBehavior.opaque,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.transparent,
                      child: SizedBox(
                        width: 25,
                        child: Image.asset(
                          "assets/english.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => context
                        .read<LanguageCubit>()
                        .onChangeLanguage(language: LanguageEnum.kr),
                    behavior: HitTestBehavior.opaque,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.transparent,
                      child: SizedBox(
                        width: 25,
                        child: Image.asset(
                          "assets/korean.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 80);
}
