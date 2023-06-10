import 'package:flutter/material.dart';
import 'package:mbo/util/design/size_config.dart';

import '../../../util/design/text_style.dart';
import '../../../util/navigator/page_navigator.dart';


class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
    required this.headerTitle,
    this.isLeading = true,
    this.onSearchPress,
    this.onVertPress,
    this.onMenuPress,
  });

  final bool isLeading;
  final String headerTitle;
  final VoidCallback? onSearchPress;
  final VoidCallback? onVertPress;
  final VoidCallback? onMenuPress;

  @override
  Size get preferredSize =>  Size.fromHeight(kToolbarHeight.d);

  List<Widget> get actions {
    return [
      if(onSearchPress != null) IconButton(icon: const Icon(Icons.search), color: Colors.black38 ,onPressed: onSearchPress),
      if(onVertPress != null) IconButton(icon: const Icon(Icons.more_vert), color: Colors.black38 ,onPressed: onVertPress),
      if(onMenuPress != null) IconButton(icon: const Icon(Icons.menu), color: Colors.black38 ,onPressed: onMenuPress)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isLeading ? IconButton(icon: const Icon(Icons.arrow_back_ios), color: Colors.black38,iconSize: 24.d, onPressed: () {PageNavigator.pop(context);}) : null,
      title: Text(headerTitle, style: textStyle(headerStyle),),
      centerTitle: true,
      actions: actions,
      elevation: 6,
      backgroundColor: Colors.white,
    );
  }
}