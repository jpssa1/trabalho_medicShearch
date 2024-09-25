import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic_app/cores/color.dart';
import 'package:medic_app/path/svgs.dart';

class AppBarPop extends StatelessWidget implements PreferredSizeWidget {
  const AppBarPop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Cor.verdeNeo),
      centerTitle: true,
      title: SvgPicture.asset(
        Svgs.logo,
        height: 130,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
