import 'package:flutter/material.dart';
import 'package:sculptor/src/widgets/atoms/icon_button_item.dart';
import 'package:sculptor/src/widgets/atoms/padding.dart';

class NGOScreen extends StatelessWidget {
  const NGOScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButtonItem(
                    icon: Icons.menu_rounded,
                    onTap: () {},
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(
                      'https://wac-cdn.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1028',
                      height: 48,
                      width: 48,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
