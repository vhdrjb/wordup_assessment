import 'package:assessment/presentation/base/page/base_page.dart';
import 'package:assessment/presentation/modules/splash/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';

class SplashPage extends BasePage<SplashBloc> {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashState();
  }
}

class _SplashState extends PageState<SplashBloc> {

  @override
  void initState() {
    super.initState();
    bloc.add(SplashEvent.init());
  }
  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
    );
  }

}