import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

int isfield = 0;
TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
        children: cells.map((cell) {
      final style =
          TextStyle(fontWeight: isHeader ? FontWeight.bold : FontWeight.normal);
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: CustomText(text: cell, size: 30),
        ),
      );
    }).toList());
