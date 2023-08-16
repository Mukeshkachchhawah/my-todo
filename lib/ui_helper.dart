

import 'package:flutter/material.dart';

class Custom_TextFild extends StatelessWidget {
  final String text;
  final String crenttext;
  final IconButton? icons;

  Custom_TextFild({
    required this.text,
    required this.crenttext,
    this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 52,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: icons,
                      hintText: crenttext,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


