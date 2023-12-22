import 'package:agro_ona/utils/constants.dart';
import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton(
      {super.key,
      required this.onClick,
      required this.icon,
      required this.title});
  final VoidCallback onClick;
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.all(8),
        width: size.width * 0.8,
        height: size.width * 0.15,
        decoration: BoxDecoration(
            color: kprimaryTextColor.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: kLightPrimaryTextColor.withOpacity(0.5), width: 1.5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 30,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: kLightPrimaryTextColor),
            )
          ],
        ),
      ),
    );
  }
}
