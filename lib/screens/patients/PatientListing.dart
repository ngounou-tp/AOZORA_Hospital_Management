import 'dart:math';

import 'package:flutter/material.dart';

String generateRandomString(int lengthOfString) {
  final random = Random();
  const allChars =
      'AaBbCcDdlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1EeFfGgHhIiJjKkL234567890';

  final randomString = List.generate(
          lengthOfString, (index) => allChars[random.nextInt(allChars.length)])
      .join();
  return randomString; // return the generated string
}

// ignore: unused_element
List _items = [];

class PatientListing extends StatelessWidget {
  const PatientListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTableExample();
  }
}

class Item {
  Item({
    required this.code,
    required this.name,
    required this.age,
    required this.genre,
    required this.mobile,
    required this.isSelected,
    required this.showfield,
  });

  String code;
  String name;
  int age;
  String genre;
  String mobile;
  bool isSelected;
  String showfield;
}

class DataTableExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DataTableExampleState();
  }
}

class DataTableExampleState extends State<DataTableExample> {
  List<Item> _items = [];
  // ignore: unused_field
  int _sortColumnIndex = 0;
  // ignore: unused_field
  bool _sortAscending = true;

  @override
  void initState() {
    super.initState();
    setState(() {
      _items = _generateItems();
    });
  }

  List<Item> _generateItems() {
    return List.generate(15, (int index) {
      return Item(
          code: "HMS0${index + 1}",
          name: 'Item ${index + 1}',
          age: Random().nextInt(100) + 10,
          genre: 'Homme',
          mobile: "679090765",
          isSelected: false,
          showfield: "");
    });
  }

  void updateSort(int columnIndex, bool ascending) {
    setState(() {
      _sortColumnIndex = columnIndex;
      _sortAscending = ascending;
    });
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(
        label: const Text("Code d'identification"),
        numeric: false, // Deliberately set to false to avoid right alignment.
      ),
      DataColumn(
        label: const Text('Nom'),
        numeric: false,
        tooltip: 'Name of the item',
        onSort: (int columnIndex, bool ascending) {
          if (ascending) {
            _items.sort((item1, item2) => item1.name.compareTo(item2.name));
          } else {
            _items.sort((item1, item2) => item2.name.compareTo(item1.name));
          }

          setState(() {
            _sortColumnIndex = columnIndex;
            _sortAscending = ascending;
          });
        },
      ),
      DataColumn(
        label: const Text("Age"),
        numeric: false, // Deliberately set to false to avoid right alignment.
        tooltip: 'Price of the item',
        onSort: (int columnIndex, bool ascending) {
          if (ascending) {
            _items.sort((item1, item2) => item1.age.compareTo(item2.age));
          } else {
            _items.sort((item1, item2) => item2.age.compareTo(item1.age));
          }

          setState(() {
            _sortColumnIndex = columnIndex;
            _sortAscending = ascending;
          });
        },
      ),
      DataColumn(
        label: const Text('Genre'),
        numeric: false,
        tooltip: 'Description of the item',
      ),
      DataColumn(
        label: const Text('Mobile'),
        numeric: false,
        tooltip: 'mobile number',
      ),
      DataColumn(
        label: IconButton(
            icon: Icon(
              Icons.menu_sharp,
              color: Colors.black,
              size: 16,
            ),
            onPressed: () {}),
      ),
    ];
  }

  DataRow _createRow(Item item) {
    return DataRow(
      // index: item.id, // for DataRow.byIndex

      selected: item.isSelected,
      onSelectChanged: (bool? isSelected) {
        if (isSelected != null) {
          item.isSelected = isSelected;

          setState(() {});
        }
      },
      color: MaterialStateColor.resolveWith((Set<MaterialState> states) =>
          states.contains(MaterialState.selected)
              ? Color.fromARGB(100, 215, 217, 219)
              : Colors.white),
      cells: [
        DataCell(
          Text(item.code),
        ),
        DataCell(
          Text(item.name),
          placeholder: false,
          showEditIcon: true,
          onTap: () {
            print('onTap');
          },
        ),
        DataCell(Text(item.age.toString())),
        DataCell(
          Text(item.genre),
        ),
        DataCell(
          Text(item.mobile),
        ),
        DataCell(
          Text(item.showfield),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: DataTable(
          columnSpacing: 0,
          dividerThickness: 1,
          onSelectAll: (bool? isSelected) {
            if (isSelected != null) {
              _items.forEach((item) {
                item.isSelected = isSelected;
              });

              setState(() {});
            }
          },
          dataRowColor: MaterialStateColor.resolveWith(
              (Set<MaterialState> states) =>
                  states.contains(MaterialState.selected)
                      ? Colors.blue
                      : Colors.white),
          dataRowHeight: 40,
          dataTextStyle:
              const TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
          headingRowColor:
              MaterialStateColor.resolveWith((states) => Colors.grey),
          headingRowHeight: 40,
          headingTextStyle:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          horizontalMargin: 10,
          showBottomBorder: true,
          showCheckboxColumn: true,
          columns: _createColumns(),
          rows: _items.map((item) => _createRow(item)).toList(),
        ),
      ),
    );
  }
}
