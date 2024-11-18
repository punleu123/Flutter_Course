import 'package:flutter/material.dart';
import '../model/profile_tile_model.dart';

ProfileData punleuProfile = ProfileData(
    name: "Thornpunleu",
    position: "Flutter Student",
    avatarUrl: 'assets/w6-s1/profile.jpg',
    tiles: [
      TileData(
          icon: Icons.phone, title: "Phone Number", value: "+855 8953 2656"),
      TileData(
          icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
      TileData(
          icon: Icons.email,
          title: "Mail",
          value: "thornpunleu.lorn@student.cadt.edu.kh"),
    ]);
