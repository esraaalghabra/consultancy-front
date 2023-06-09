import 'package:consultancy/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

class TextAuth extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function() onTap;
  const TextAuth(
      {Key? key,
      required this.textone,
      required this.texttwo,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textone),
        InkWell(
          onTap: onTap,
          child: Text(texttwo,
              style: const TextStyle(
                  color: AppColors.primary, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}
