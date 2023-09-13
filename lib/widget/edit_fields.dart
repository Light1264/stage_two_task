import 'package:flutter/material.dart';

class EditFields extends StatelessWidget {
  const EditFields({
    super.key,
    required this.textTitle,
    required this.textController,
    this.onChanged,
  });
  final String textTitle;
  final TextEditingController textController;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textTitle,
          style: const TextStyle(fontSize: 18),
        ),
        SizedBox(
          // height: 50,
          width: double.infinity,
          child: TextField(
            maxLines: 4,
            minLines: 1,
            controller: textController,
            onChanged: onChanged,
            keyboardType: TextInputType.text,
            textCapitalization: TextCapitalization.sentences,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(15, 25, 15, 5),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xFF323232),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
