import 'package:flutter/material.dart';

// ignore: unused_element
List _items = [];

class InfirmierListing extends StatelessWidget {
  const InfirmierListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTableExample();
  }
}

class Item {
  Item({
    required this.name,
    required this.adresse,
    required this.mobile,
    required this.titre,
    required this.gestionaire,
    required this.departement,
    required this.isSelected,
  });

  String name;

  String mobile;
  String adresse;
  String titre;
  String gestionaire;
  String departement;
  bool isSelected;
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
    return List.generate(10, (int index) {
      return Item(
        name: 'Item ${index + 1}',
        adresse: '',
        mobile: "",
        departement: "Nurse",
        titre: "Infirmieres & Infirmier",
        gestionaire: "BALY BOKALY IVAN",
        isSelected: false,
      );
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
        label: const Text("NOM"),
        numeric: false, // Deliberately set to false to avoid right alignment.
      ),
      DataColumn(
        label: const Text('TELEPHONE proffesionelle'),
        numeric: false,
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
        label: const Text("ADRESSE ELECTONIQUE"),
        numeric: false, // Deliberately set to false to avoid right alignment.
      ),
      DataColumn(
        label: const Text('DEPARTEMENT'),
        numeric: false,
      ),
      DataColumn(
        label: const Text('Mobile'),
        numeric: false,
      ),
      DataColumn(
        label: const Text('TITRE DU POSTE'),
        numeric: false,
      ),
      DataColumn(
        label: const Text('GESTIONAIRE'),
        numeric: false,
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
          Text(item.name),
        ),
        DataCell(
          Text(item.mobile),
          placeholder: false,
          onTap: () {
            print('onTap');
          },
        ),
        DataCell(Text(item.adresse)),
        DataCell(
          Text(item.departement),
        ),
        DataCell(
          Text(item.mobile),
        ),
        DataCell(
          Text(item.titre),
        ),
        DataCell(
          Text(item.gestionaire),
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
