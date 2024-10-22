import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/constants/ui_helper.dart';
import 'package:portfolio/interface/workflow_page/phone_display.dart';
import 'package:portfolio/services/language/language_cubit.dart';

class FastlaneEducationsWorkflow extends StatelessWidget {
  const FastlaneEducationsWorkflow({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = !(size.width > 1300);

    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: size.height,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        state.texts["workflowFETitle"],
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(
                        height: size.width * .015,
                      ),
                      const WorkflowPhoneDisplay(phoneDisplays: [
                        "assets/joruney view.png",
                        "assets/fe_profile.png",
                        "assets/fe_qcm.png",
                        "assets/fe_results.png",
                      ]),
                    ],
                  ),
                  if (!isMobile) SizedBox(width: size.width * .04),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        fancyContainer(
                          size: size,
                          maxWidth: 900,
                          child: RichText(
                            text: TextSpan(
                              children: getDescription(
                                  state.texts["workflowFEDescription"],
                                  context),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: isMobile ? 0 : size.width * .02),
                          child: fancyContainer(
                            size: size,
                            maxWidth: 900,
                            child: SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    state.texts["workflowFeaturesTitle"],
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 22,
                                            color: AppColors.secondaryColor),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, top: 12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          state.texts[
                                              "workflowFEFeaturesParkour"],
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium!
                                              .copyWith(fontSize: 20),
                                        ),
                                        Text(
                                          state.texts["workflowFEFeaturesIA"],
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium!
                                              .copyWith(fontSize: 20),
                                        ),
                                        Text(
                                          state.texts[
                                              "workflowFEFeaturesDeeplink"],
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium!
                                              .copyWith(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        fancyContainer(
                          maxWidth: 900,
                          size: size,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.texts["workflowFeaturesTechnologies"],
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        fontSize: 22,
                                        color: AppColors.secondaryColor),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: isMobile ? 24.0 : 12.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    alignment: WrapAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20.0, horizontal: 24.0),
                                        child: SizedBox(
                                          width: 80,
                                          height: 80,
                                          child: Image.asset(
                                            "assets/flutter.webp",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12.0, horizontal: 24.0),
                                        child: SizedBox(
                                          width: 80,
                                          height: 80,
                                          child: Image.asset(
                                            "assets/firebase.png",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12.0, horizontal: 24.0),
                                        child: SizedBox(
                                          width: 80,
                                          height: 80,
                                          child: Image.asset(
                                            "assets/ai.png",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12.0, horizontal: 24.0),
                                        child: SizedBox(
                                          width: 80,
                                          height: 80,
                                          child: Image.asset(
                                            "assets/bloc.png",
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
