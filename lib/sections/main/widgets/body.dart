import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../../provider/scroll_provider.dart';
import '../../../utils/utils.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return ListView.builder(
      controller: scrollProvider.controller,
      itemCount: BodyUtils.views.length,
      itemBuilder: (context, index) => BodyUtils.views[index],
    );
  }
}
