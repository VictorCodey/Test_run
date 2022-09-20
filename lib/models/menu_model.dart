import 'package:flutter/material.dart';

class MenuItem{
  final String title;
  final IconData icon;

  const MenuItem(
      this.title,
      this.icon,
  );
}

const MenuItem payment = MenuItem('Payment', Icons.payment);
const MenuItem promo = MenuItem('Promo', Icons.card_giftcard);
const MenuItem notification = MenuItem('Notification', Icons.notifications);
const MenuItem help = MenuItem('Help', Icons.help);
const MenuItem aboutUs = MenuItem('About Us', Icons.info_outline);
const MenuItem rateUs = MenuItem('Rate Us', Icons.star_border_outlined);
const MenuItem settings = MenuItem('Settings', Icons.settings);

List all = <MenuItem>[payment, promo, notification, help, aboutUs, rateUs, settings];


// Another way of instantiating a class..

// class MenuItems {
//   static const payment = MenuItem('Payment', Icons.payment);
//   static const promo = MenuItem('Promo', Icons.card_giftcard);
//   static const notification = MenuItem('Notification', Icons.notifications);
//   static const help = MenuItem('Help', Icons.help);
//   static const aboutUs = MenuItem('About Us', Icons.info_outline);
//   static const rateUs = MenuItem('Rate Us', Icons.star_border_outlined);
//   static const settings = MenuItem('Settings', Icons.settings);
//
//   static const all = [payment, promo, notification, help, aboutUs, rateUs, settings];
// }