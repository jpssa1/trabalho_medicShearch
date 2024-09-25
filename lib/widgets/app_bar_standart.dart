import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic_app/cores/color.dart';
import 'package:medic_app/path/svgs.dart';

class AppBarStandart extends StatelessWidget implements PreferredSizeWidget {
  const AppBarStandart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Cor.verdeNeo),
      centerTitle: true,
      title: SvgPicture.asset(
        Svgs.logo,
        height: 130,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.account_circle,
            size: 40,
          ),
        )
      ],
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu_outlined),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
