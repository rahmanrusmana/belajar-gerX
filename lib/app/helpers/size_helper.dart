import 'package:flutter/material.dart';

Size displaySize(BuildContext context) {
  debugPrint('size = ' + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  debugPrint('size = ' + displaySize(context).height.toString());
  return displaySize(context).height;
}

double displayWidht(BuildContext context) {
  debugPrint('size = ' + displaySize(context).width.toString());
  return displaySize(context).width;
}
