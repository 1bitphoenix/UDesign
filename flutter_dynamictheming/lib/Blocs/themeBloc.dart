import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dynamictheming/UI/DesignedTheme.dart';

class ThemeBloc{
    final _themeController = StreamController<ThemeData>();

    get changeTheme => _themeController.sink;
    get selectedTheme => _themeController.stream;
}