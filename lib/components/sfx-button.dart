import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:flutters/flutters-game.dart';

class SFXButton {
  final FluttersGame game;
  Rect rect;
  Sprite onSprite;
  Sprite offSprite;
  bool isOn = true;

  SFXButton(this.game) {
    rect = Rect.fromLTWH(60, 10, 40, 40);
    onSprite = Sprite('sfx-on.png');
    offSprite = Sprite('sfx-off.png');
  }

  void render(Canvas c) {
    (isOn ? onSprite : offSprite).renderRect(c, rect);
  }
}