import 'package:flutter/material.dart';

class ProfileModel {
  ProfileModel({required this.name, required this.icon});
  final String name;
  final Icon icon;
}

List<ProfileModel> profileList = [
  ProfileModel(name: 'Orders', icon: Icon(Icons.shopping_bag_outlined)),
  ProfileModel(name: 'My Details', icon: Icon(Icons.person_outlined)),
  ProfileModel(
    name: 'Delivery Address',
    icon: Icon(Icons.location_on_outlined),
  ),
  ProfileModel(name: 'Payment Methods', icon: Icon(Icons.credit_card_outlined)),
  ProfileModel(name: 'Promo Code', icon: Icon(Icons.card_giftcard_outlined)),
  ProfileModel(
    name: 'Notifications',
    icon: Icon(Icons.notifications_none_outlined),
  ),
  ProfileModel(name: 'Help', icon: Icon(Icons.help_outline_outlined)),
  ProfileModel(name: 'About', icon: Icon(Icons.info_outlined)),
];
