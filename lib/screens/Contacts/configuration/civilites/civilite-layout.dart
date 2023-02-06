import 'package:admin/responsive.dart';
import 'package:admin/screens/Contacts/contact-appbar.dart';
import 'package:admin/upComponent/cardbutton.dart';
import 'package:admin/upComponent/customSearch.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

var field = 1;

class CiviliteLayoute extends StatefulWidget {
  CiviliteLayoute({Key? key}) : super(key: key);

  @override
  State<CiviliteLayoute> createState() => _CiviliteLayouteState();
}

class _CiviliteLayouteState extends State<CiviliteLayoute> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: contactAppBar(context, scaffoldKey),
      body: Column(children: [
        Container(
          height: heigth / 6,
          color: Colors.white54,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                        text: "Civilite",
                        size: Responsive.isDesktop(context)
                            ? 22
                            : Responsive.isTablet(context)
                                ? 20
                                : 14,
                        color: Colors.grey),
                    field == 1
                        ? Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      field = 2;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: CustomText(
                                        text: "Creer",
                                        size: Responsive.isDesktop(context)
                                            ? 19
                                            : Responsive.isTablet(context)
                                                ? 12
                                                : 11,
                                        color: Colors.white),
                                  )),
                              CardButton(icone: Icons.download)
                            ],
                          )
                        : Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: CustomText(
                                        text: "SAUVEGARDER",
                                        size: Responsive.isDesktop(context)
                                            ? 15
                                            : Responsive.isTablet(context)
                                                ? 13
                                                : 11,
                                        color: Colors.white),
                                  )),
                              ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      field = 1;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: CustomText(
                                        text: "ANNULER",
                                        size: Responsive.isDesktop(context)
                                            ? 15
                                            : Responsive.isTablet(context)
                                                ? 13
                                                : 11,
                                        color: Colors.white),
                                  )),
                              CardButton(icone: Icons.download)
                            ],
                          )
                  ],
                ),
              ),
              Spacer(),
              Column(
                children: [
                  GestureDetector(
                    child: Row(
                      children: [
                        SizedBox(
                          width: width / 3,
                          child: TextField(),
                        ),
                        IconButton(
                          onPressed: () {
                            // method to show the search bar
                            showSearch(
                                context: context,
                                // delegate to customize the search bar
                                delegate: CustomSearchDelegate());
                          },
                          icon: const Icon(Icons.search),
                        ),
                      ],
                    ),
                    onDoubleTap: () {},
                  ),
                  Row(
                    children: [
                      CardButton(icone: Icons.filter_1_rounded),
                      CardButton(icone: Icons.menu),
                      CardButton(icone: Icons.star),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        DataTableExample()
      ]),
    );
  }
}

class Item {
  Item({
    required this.titre,
    required this.abbreviation,
    required this.isSelected,
  });

  String titre;
  String abbreviation;

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
        titre: "Docteur",
        abbreviation: "Dr",
        isSelected: false,
      );
    });
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(
        label: const Text("Titre"),
      ),
      DataColumn(
        label: const Text('Abreviation '),
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
          field == 1 ? Text(item.titre) : TextField(),
        ),
        DataCell(
          field == 1 ? Text(item.abbreviation) : TextField(),
          placeholder: false,
          onTap: () {
            print('onTap');
          },
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
