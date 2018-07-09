import 'dart:async';

class BgBloc{
  final _bgController = StreamController<String>();

  get changeBg => _bgController.sink;
  get selectedBg => _bgController.stream;
}