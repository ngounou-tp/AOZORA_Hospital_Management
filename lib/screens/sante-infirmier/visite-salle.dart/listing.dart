import 'package:flutter/material.dart';

class VisiteLitsListing extends StatelessWidget {
  const VisiteLitsListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTableExample();
  }
}

class Item {
  Item({
    required this.numero,
    required this.infirmier,
    required this.patient,
    required this.date,
    required this.etat,
    required this.isSelected,
  });

  String numero;

  String infirmier;
  String patient;
  String date;
  String etat;

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
    return List.generate(5, (int index) {
      return Item(
        numero: 'RM00 ${index + 1}',
        infirmier: 'Theophane',
        patient: "",
        date: "23/09/2022",
        etat: "Brouillon",
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
        label: const Text("Manche Numero"),
        numeric: false, // Deliberately set to false to avoid right alignment.
      ),
      DataColumn(
        label: const Text('Infirmiere'),
      ),
      DataColumn(
        label: const Text("Patient"),
        numeric: false, // Deliberately set to false to avoid right alignment.
      ),
      DataColumn(
        label: const Text('Date'),
        numeric: false,
      ),
      DataColumn(
        label: const Text('Etat'),
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
          Text(item.numero),
        ),
        DataCell(
          Text(item.infirmier),
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
          Text(item.etat),
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
