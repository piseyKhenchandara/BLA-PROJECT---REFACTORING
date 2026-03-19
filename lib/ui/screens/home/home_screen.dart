import 'package:bla/ui/screens/home/home_content.dart';
import 'package:bla/ui/screens/home/home_view_model.dart';
import 'package:bla/ui/states/ride_pref_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (context) =>
          HomeViewModel(ridePrefState: context.read<RidePrefState>()),
          
      child: Builder(
        builder: (context) => HomeContent(viewModel: context.watch<HomeViewModel>()),
      ),
    );
  }
}
