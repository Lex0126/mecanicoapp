import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () async {
          final DateTime? selected = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2060),
            builder: (context, child) {
              return Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ColorScheme.light(
                    primary: HexColor('#243447'), // <-- SEE HERE
                    onPrimary: HexColor('#F2F2F2'), // <-- SEE HERE
                    onSurface: HexColor('#243447'), // <-- SEE HERE
                  ),
                  textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                      primary: HexColor('#4E6682'), // button text color
                    ),
                  ),
                ),
                child: child!,
              );
            },
          );
        },
        icon: Icon(
          Icons.calendar_month_outlined,
          color: Colors.white,
        ));
  }
}
