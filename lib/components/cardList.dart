import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trails/components/itemCard.dart';
import 'package:trails/components/timeDisplayEx.dart';
import 'package:trails/model/time.dart';

class CardList extends StatelessWidget {
  final itemList = [
    ItemCard(
      title: 'Item to be tracked 1',
      description: 'Lorem ipsum dolor sit amet sss ssss ss sss  sssss ssssssss1',
      tags: ['Play', 'Game'],
      time: TimeDisplayEx(hour: 2, minute: 15, second: 0),
    ),
    ItemCard(
      title: 'Item to be tracked 2',
      description: 'Lorem ipsum dolor sit amet 2',
      tags: ['Party', 'Night'],
      time: TimeDisplayEx(hour: 0, minute: 6, second: 12),
    ),
    ItemCard(
      title: 'Item to be tracked 3',
      description: 'Lorem ipsum dolor sit amet 3',
      tags: ['Friends', 'Cafe'],
      time: TimeDisplayEx(hour: 1, minute: 30, second: 0),
    ),
    ItemCard(
      title: 'Item to be tracked 4',
      description: 'Lorem ipsum dolor sit amet 4',
      tags: ['Play', 'Golf', 'Game'],
      time: TimeDisplayEx(hour: 0, minute: 30, second: 0),
    ),
    ItemCard(
      title: 'Item to be tracked 5',
      description: 'Lorem ipsum dolor sit amet 5',
      tags: ['Football', 'Game'],
      time: TimeDisplayEx(hour: 1, minute: 30, second: 0),
    ),
    ItemCard(
      title: 'Item to be tracked 6',
      description: 'Lorem ipsum dolor sit amet 6',
      tags: ['Play', 'Game'],
      time: TimeDisplayEx(hour: 0, minute: 0, second: 50),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
        shrinkWrap: true,
        itemCount: itemList.length,
        itemBuilder: (BuildContext context, int index) {
          return itemList[index];
        });
  }
}
