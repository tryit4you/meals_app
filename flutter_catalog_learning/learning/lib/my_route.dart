import 'package:flutter/material.dart';
import 'package:learning/constants.dart';

class MyRoute extends StatelessWidget {
  static const _kFrontLayerMinHeight = 128.0;
  // Path of source file (relative to project root). The file's content will be
  // shown in the "Code" tab.
  final String? sourceFilePath;
  // Actual content of the example.
  final Widget? child;
  // Title shown in the route's appbar. By default just returns routeName.
  final String? _title;
  // A short description of the route. If not null, will be shown as subtitle in
  // the home page list tile.
  final String? description;
  // Returns a set of links {title:link} that are relative to the route. Can put
  // documention links or reference video/article links here.
  final Map<String, String>? links;
  // Route name of a page.
  final String? _routeName;
  final Iterable<PlatformType>? supportedPlatforms;

  const MyRoute({
    Key? key,
    @required this.sourceFilePath,
    @required this.child,
    String? title,
    this.description,
    this.links,
    String? routeName,
    this.supportedPlatforms = PlatformType.values,
  })  : _title = title,
        _routeName = routeName,
        super(key: key);
  get routeName => this._routeName ?? '/${this.child.runtimeType.toString()}';
  @override
  Widget build(BuildContext context) {
    final appbarLeading =
        (isOnMobile || this.routeName == Navigator.defaultRouteName)
            ? null
            : IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back));
    return backdrop
  }
}
