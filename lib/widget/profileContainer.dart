import 'package:flutter/material.dart';
import 'package:stage_two_task/view/edit_profile.dart';
import 'package:stage_two_task/widget/app_button.dart';
import 'package:stage_two_task/widget/text_container_widget.dart';

class ProfileContainer extends StatefulWidget {
  const ProfileContainer({super.key});

  @override
  State<ProfileContainer> createState() => _ProfileContainerState();
}

class _ProfileContainerState extends State<ProfileContainer> {

  String fullName = "Umunubo B. Elo";
  String slackUserName = "Umunubo Elo";
  String gitHubHandle = "https://github.com/Light1264";
  String bio =
      "I'm a mobile applications development with 21 months of experince and "
      "I love building and creating new and innovative problem-solving software";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 120, 16, 24),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(14, 20, 12, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "CV INFO",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextContainerWidget(
                    title: "FullName",
                    containerText: fullName,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextContainerWidget(
                    title: "Slack UserName",
                    containerText: slackUserName,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextContainerWidget(
                    title: "GitHub Handle",
                    containerText: gitHubHandle,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextContainerWidget(
                    title: "Bio",
                    containerText: bio,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: AppButton(
                buttonText: "Edit CV",
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EditCvScreen(
                        fullName: fullName,
                        slackUserName: slackUserName,
                        gitHubHandle: gitHubHandle,
                        bio: bio,
                        updateCallback: (newValue) {
                          setState(() {
                            fullName = newValue["fullName"].toString().isEmpty
                                ? fullName
                                : newValue["fullName"].toString();
                            slackUserName =
                                newValue["slackUserName"].toString().isEmpty
                                    ? slackUserName
                                    : newValue["slackUserName"].toString();
                            gitHubHandle =
                                newValue["gitHubHandle"].toString().isEmpty
                                    ? gitHubHandle
                                    : newValue["gitHubHandle"].toString();
                            bio =
                                newValue["bio"].toString().isEmpty
                                    ? bio
                                    : newValue["bio"].toString();
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
