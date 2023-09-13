import 'package:flutter/material.dart';
import 'package:stage_two_task/widget/app_button.dart';
import 'package:stage_two_task/widget/edit_fields.dart';

class EditCvScreen extends StatefulWidget {
  const EditCvScreen({Key? key, required this.updateCallback})
      : super(key: key);
  final Function(Map<String, String>) updateCallback;

  @override
  State<EditCvScreen> createState() => _EditCvScreenState();
}

class _EditCvScreenState extends State<EditCvScreen> {
  TextEditingController fullName = TextEditingController();
  TextEditingController slackUserName = TextEditingController();
  TextEditingController gitHubHandle = TextEditingController();
  TextEditingController bio = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 59, 57, 57),
        toolbarHeight: 70,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            size: 25,
            color: Color.fromARGB(255, 240, 239, 239),
          ),
        ),
        title: const Text(
          "Edit CV",
          style: TextStyle(
            color: Color.fromARGB(255, 240, 239, 239),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              EditFields(
                textTitle: "FullName",
                textController: fullName,
              ),
              const SizedBox(
                height: 15,
              ),
              EditFields(
                textTitle: "Slack UsserName",
                textController: slackUserName,
              ),
              const SizedBox(
                height: 15,
              ),
              EditFields(
                textTitle: "GitHub Handle",
                textController: gitHubHandle,
              ),
              const SizedBox(
                height: 15,
              ),
              EditFields(
                textTitle: "Bio",
                textController: bio,
              ),
              const SizedBox(
                height: 40,
              ),
              AppButton(
                buttonText: "Save Changes",
                onPressed: () {
                  widget.updateCallback({
                    "fullName": fullName.text.trim(),
                    "slackUserName": slackUserName.text.trim(),
                    "gitHubHandle": gitHubHandle.text.trim(),
                    "bio": bio.text.trim(),
                  });
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
