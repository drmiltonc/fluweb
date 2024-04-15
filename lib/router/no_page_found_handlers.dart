import 'package:fluro/fluro.dart';
import 'package:fluweb/ui/views/no_page_found_view.dart';

class NoPageFoundHanlders {
  static Handler noPageFound = Handler(
    handlerFunc: (context, parameters) {
      return const NoPageFoundView();
    },
  );
}
