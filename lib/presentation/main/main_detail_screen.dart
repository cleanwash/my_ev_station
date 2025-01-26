import 'package:flutter/material.dart';
import 'package:my_ev_station/presentation/main/main_view_model.dart';
import 'package:provider/provider.dart';

class MainDetailScreen extends StatelessWidget {
  const MainDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return const Placeholder();
  }
}
