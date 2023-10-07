// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:audioplayers/audioplayers.dart';

class ItemModel {

  final String? img;
  final String name;
  final String nameEn;
  final String sound;

  const ItemModel({
    this.img,
    required this.name,
    required this.nameEn,
    required this.sound,
  });


  void playsound(){
    final player = AudioPlayer();
    player.play(AssetSource(sound));
    
  }
}
