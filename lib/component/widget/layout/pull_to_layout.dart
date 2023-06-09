import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


class PullToLayout extends StatefulWidget {
  const PullToLayout({Key? key, this.onReload, required this.child}) : super(key: key);

  final Function? onReload;
  final Widget child;
  @override
  State<PullToLayout> createState() => _PullToLayoutState();
}

class _PullToLayoutState extends State<PullToLayout> {
  late RefreshController _refreshController;

  void _onRefresh() async{
    await widget.onReload?.call();
    _refreshController.refreshCompleted();
  }
  @override
  void initState() {
    _refreshController = RefreshController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SmartRefresher(
        header: CustomHeader(
          builder: (BuildContext context, RefreshStatus? mode) {
            Widget body ;
            if(mode==RefreshStatus.idle||mode == RefreshStatus.canRefresh){
              body =  const Text('↓');
            }
            else {
              body =  const CupertinoActivityIndicator();
            }

            return SizedBox(
              height: 40.0,
              child: Center(child:body),
            );
          },),
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: widget.child,
      ),
    );
  }
}

