import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/interface/workflow_page/altermobilite_workflow.dart';
import 'package:portfolio/interface/workflow_page/fastlane_educations_workflow.dart';
import 'package:portfolio/interface/workflow_page/followmysport_workflow.dart';
import 'package:portfolio/interface/workflow_page/jobmatchr_workflow.dart';
import 'package:portfolio/services/language/language_cubit.dart';

class WorkflowPage extends StatelessWidget {
  const WorkflowPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        return SizedBox(
          width: size.width,
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: size.height,
                maxWidth: 1500,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      "${state.texts["workflowTitle"].toString().toUpperCase()}''",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const FollowMySportWorkflow(),
                  const FastlaneEducationsWorkflow(),
                  const JobmatchrWorkflow(),
                  const AltermobiliteWorkflow(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
