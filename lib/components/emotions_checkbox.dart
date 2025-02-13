import 'package:flutter/material.dart';

class CheckBoxGroup extends StatefulWidget {
   final Function(String) onSelectionChanged;

  const CheckBoxGroup({super.key});

   const CheckboxGroup({super.key, required this.onSelectionChanged});

  @override
  _CheckboxGroupState createState() => _CheckboxGroupState();
}
class _CheckBoxGroupState extends State<CheckBoxGroup> {
  String? selectedOption;
  final List<String> options = ["☹", "🙁", "😐", "🙂", "😀"];

  void _handleCheckBoxChange(String value) {
    setState(() {
      selectedOption = value;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ...options.map((option) {
        return CheckboxListTile(title: Text(option),value: selectedOption == option, onChanged: (bool? checked) {
          if(checked == true) {
            _handleCheckBoxChange(option);
          }
        });
      }),
    ],
   );
  }
}



