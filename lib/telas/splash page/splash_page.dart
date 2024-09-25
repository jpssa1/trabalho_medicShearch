import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic_app/cores/color.dart';
import 'package:medic_app/path/svgs.dart';
import 'package:medic_app/telas/login%20e%20registro/login_ou_registro.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cor.verdeLodo,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(Svgs.logoComNomeBranco),
          ),
        ],
      ),
    );
  }

  Future redirect() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      PageTransition(
        child: const LoginOuRegistroPage(),
        type: PageTransitionType.fade,
        duration: const Duration(milliseconds: 500),
      ),
    );
  }
}
