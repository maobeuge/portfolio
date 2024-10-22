import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/constants/ui_helper.dart';
import 'package:portfolio/interface/about_me_page/about_me_page.dart';
import 'package:portfolio/interface/contact_page/contact_page.dart';
import 'package:portfolio/interface/introduction_page/introduction_page.dart';
import 'package:portfolio/interface/landing_page/app_bar.dart';
import 'package:portfolio/interface/workflow_page/workflow_page.dart';
import 'package:portfolio/services/index/index_cubit.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const PortfolioAppBar(),
      body: BlocBuilder<IndexCubit, IndexState>(
        builder: (context, state) {
          return SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              children: [
                IntroductionPage(
                  key: state.pageKeys[0],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: AboutMePage(
                    key: state.pageKeys[1],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: WorkflowPage(
                    key: state.pageKeys[2],
                  ),
                ),
                ContactPage(
                  key: state.pageKeys[3],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
