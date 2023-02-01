import 'package:flutter/material.dart';

class TraitementListing extends StatelessWidget {
  const TraitementListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTableExample();
  }
}

class Item {
  Item({
    required this.nom,
    required this.subject,
    required this.patient,
    required this.date,
    required this.activite,
    required this.etat,
    required this.field,
    required this.isSelected,
  });

  String nom;

  String subject;
  String patient;
  String date;
  String activite;
  String etat;
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
    return List.generate(1, (int index) {
      return Item(
        nom: "CASE001",
        subject: "",
        patient: "BODO AMBO evelyne",
        date: "23/09/2022",
        activite: "",
        etat: "Brouillon",
        field: "",
        isSelected: false,
      );
    });
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(
        label: const Text("Nom"),
      ),
      DataColumn(
        label: const Text('Subject'),
      ),
      DataColumn(
        label: const Text("Patient"),
      ),
      DataColumn(
        label: const Text('Date du diagnostic'),
      ),
      DataColumn(
        label: const Text('Activite suivant'),
      ),
      DataColumn(
        label: const Text('Etat'),
      ),
      DataColumn(label: Icon(Icons.menu_sharp, size: 15, color: Colors.black)),
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
          Text(item.nom),
        ),
        DataCell(
          Text(item.subject),
          placeholder: false,
          onTap: () {
            print('onTap');
          },
        ),
        DataCell(Text(item.patient)),
        DataCell(
          Text(item.date),
        ),
        DataCell(
          Text(item.activite),
        ),
        DataCell(
          Text(item.etat),
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
