import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarMain extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppBarMain({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: Icon(Icons.arrow_back),
      ),
      title: Text(title),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
