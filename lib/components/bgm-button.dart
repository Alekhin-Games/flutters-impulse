import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:flutters/flutters-game.dart';

class BGMButton {
  final FluttersGame game;
  Rect rect;
  Sprite onSprite;
  Sprite offSprite;
  bool isOn = true;

  BGMButton(this.game) {
    rect = Rect.fromLTWH(10, 10, 40, 40);
    onSprite = Sprite('bgm-on.png');
    offSprite = Sprite('bgm-off.png');
  }

  void render(Canvas c) {
    (isOn ? onSprite : offSprite).renderRect(c, rect);
  }
}