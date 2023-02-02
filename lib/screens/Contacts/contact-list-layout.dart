import 'package:flutter/material.dart';

class ContactListLayout extends StatelessWidget {
  const ContactListLayout({Key? key}) : super(key: key);

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
    required this.vendeur,
    required this.suivant,
    required this.ville,
    required this.pays,
    required this.field,
    required this.isSelected,
  });

  String name;

  String mobile;
  String adresse;

  String vendeur;
  String suivant;
  String ville;
  String pays;
  String field;
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
        vendeur: "Nurse",
        suivant: "",
        ville: "Douala",
        pays: "Cameroun",
        field: "",
        isSelected: false,
      );
    });
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(
        label: const Text("NOM"),
      ),
      DataColumn(
        label: const Text('TELEPHONE '),
      ),
      DataColumn(
        label: const Text("COURRIEL"),
      ),
      DataColumn(
        label: const Text('VENDEUR'),
      ),
      DataColumn(
        label: const Text('ACTIVITE SUIVANT'),
      ),
      DataColumn(
        label: const Text('VILLE'),
      ),
      DataColumn(
        label: const Text('PAYS'),
      ),
      DataColumn(
          label: Icon(
        Icons.menu,
        size: 20,
        color: Colors.black,
      )),
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
        DataCell(Text(item.vendeur)),
        DataCell(
          Text(item.adresse),
        ),
        DataCell(
          Text(item.ville),
        ),
        DataCell(
          Text(item.pays),
        ),
        DataCell(
          Text(item.field),
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
