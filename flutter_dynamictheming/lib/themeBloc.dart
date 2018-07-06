import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dynamictheming/UI/DesignedTheme.dart';

class ThemeBloc{
    final _themeController = StreamController<DesignedTheme>();

    get changeTheme => _themeController.sink.add;


}