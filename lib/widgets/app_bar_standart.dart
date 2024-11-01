import 'package:flutter/material.dart';

import 'package:medic_app/cores/color.dart';

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
      title: Text('Bem vindo!'),
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
