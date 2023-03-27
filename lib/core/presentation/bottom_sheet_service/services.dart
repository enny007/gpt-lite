import 'package:flutter/material.dart';
import 'package:flutter_ai/core/presentation/components/drop_down.dart';
import 'package:flutter_ai/core/presentation/components/text_widget.dart';
import 'package:flutter_ai/core/shared/constants.dart';

class Services {
  static Future<void> showModalSheet(BuildContext context) async {
    await showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        backgroundColor: scaffoldBackgroundColor,
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Flexible(
                  child: TextWidget(
                    label: 'Choosen Model:',
                    fontSize: 16,
                  ),
                ),
                Flexible(
                  child: ModelDropDownWidget(),
                ),
              ],
            ),
          );
        });
  }
}
