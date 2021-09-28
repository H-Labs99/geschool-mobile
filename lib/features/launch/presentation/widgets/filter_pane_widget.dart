import 'package:flutter/material.dart';
import 'package:geschool/core/utils/colors.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

///Class for single filter pane
// ignore: must_be_immutable
class SingleFilterPaneWidget extends StatefulWidget {
  /// Exemple :
  /// ```dart
  /// elementList.map((item) =>
  /// DropdownMenuItem(
  ///   child: Text(item.label),
  ///   value: item.value,
  /// ))
  /// .toList()
  /// ```
  List<DropdownMenuItem<dynamic>> items;

  Icon icon;
  dynamic hint;

  /// Default to [false], set to true to make the widget a searchable dropdown
  bool isSearchable;
  Function onChanged;
  Function onChecked;
  Function listAll;

  SingleFilterPaneWidget({
    Key key,
    this.items,
    this.hint,
    this.onChanged,
    this.onChecked,
    this.listAll,
    this.icon,
    this.isSearchable = false,
  }) : super(key: key);

  @override
  _SingleFilterPaneWidgetState createState() => _SingleFilterPaneWidgetState();
}

class _SingleFilterPaneWidgetState extends State<SingleFilterPaneWidget> {
  bool allChk = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width / 1.7,
              maxHeight: MediaQuery.of(context).size.width / 3,
            ),
            child: widget.isSearchable
                ? SearchableDropdown(
                    closeButton: "Fermer",
                    isExpanded: true,
                    dialogBox: true,
                    items: widget.items,
                    icon: widget.icon,
                    hint: widget.hint,
                    onChanged: (value) {
                      widget.onChanged(value);
                    },
                  )
                : DropdownButtonFormField(
                    isExpanded: true,
                    items: widget.items,
                    icon: widget.icon,
                    hint: widget.hint,
                    onChanged: (value) {
                      widget.onChanged(value);
                    },
                  ),
          ),
          Container(
            constraints: BoxConstraints(
                maxWidth: (MediaQuery.of(context).size.width / 3.5),
                maxHeight: (MediaQuery.of(context).size.width / 5)),
            color: Colors.grey[100],
            child: CheckboxListTile(
              tristate: false,
              dense: true,
              activeColor: GreenLight,
              secondary: const Text('Tout'),
              value: allChk,
              onChanged: (valueNew) {
                setState(() {
                  allChk = valueNew;
                });
                widget.onChecked(valueNew);
                widget.listAll();
              },
            ),
          )
        ],
      ),
    );
  }
}

/// Class for Double Filter pane
// ignore: must_be_immutable
class DoubleFilterPaneWidget extends StatefulWidget {
  /// Exemple :
  /// ```dart
  /// firstList.map((item) =>
  /// DropdownMenuItem(
  ///   child: Text(item.label),
  ///   value: item.value,
  /// ))
  /// .toList()
  /// ```
  List<DropdownMenuItem<dynamic>> items1;

  /// Exemple :
  /// ```dart
  /// secondList.map((item) =>
  /// DropdownMenuItem(
  ///   child: Text(item.label),
  ///   value: item.value,
  /// ))
  /// .toList()
  /// ```
  List<DropdownMenuItem<dynamic>> items2;

  Icon icon1;
  Icon icon2;
  dynamic hint1;
  dynamic hint2;

  /// Default to [false], set to true to make the widget a searchable dropdown
  bool isSearchable;
  Function onChanged1;
  Function onChanged2;
  Function onChecked;
  Function listAll;

  DoubleFilterPaneWidget({
    Key key,
    this.items1,
    this.items2,
    this.hint1,
    this.hint2,
    this.onChanged1,
    this.onChanged2,
    this.onChecked,
    this.listAll,
    this.icon1,
    this.icon2,
    this.isSearchable = false,
  }) : super(key: key);

  @override
  _DoubleFilterPaneWidgetState createState() => _DoubleFilterPaneWidgetState();
}

class _DoubleFilterPaneWidgetState extends State<DoubleFilterPaneWidget> {
  bool allChk = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 2.3),
                child: widget.isSearchable
                    ? SearchableDropdown(
                        closeButton: "Fermer",
                        isExpanded: true,
                        dialogBox: true,
                        items: widget.items1,
                        icon: widget.icon1,
                        hint: widget.hint1,
                        onChanged: (value) {
                          widget.onChanged1(value);
                        },
                      )
                    : DropdownButtonFormField(
                        isExpanded: true,
                        items: widget.items1,
                        icon: widget.icon1,
                        hint: widget.hint1,
                        onChanged: (value) {
                          widget.onChanged1(value);
                        },
                      ),
              ),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 2.3),
                child: widget.isSearchable
                    ? SearchableDropdown(
                        closeButton: "Fermer",
                        isExpanded: true,
                        dialogBox: true,
                        items: widget.items2,
                        icon: widget.icon2,
                        hint: widget.hint2,
                        onChanged: (value) {
                          widget.onChanged2(value);
                        },
                      )
                    : DropdownButtonFormField(
                        isExpanded: true,
                        items: widget.items2,
                        icon: widget.icon2,
                        hint: widget.hint2,
                        onChanged: (value) {
                          widget.onChanged2(value);
                        },
                      ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Container(
            constraints: BoxConstraints(
                maxWidth: (MediaQuery.of(context).size.width) - 30),
            color: Colors.grey[100],
            child: CheckboxListTile(
              tristate: false,
              dense: true,
              activeColor: GreenLight,
              secondary: const Text('Tout'),
              value: allChk,
              onChanged: (valueNew) {
                setState(() {
                  allChk = valueNew;
                });
                widget.onChecked(valueNew);
                widget.listAll();
              },
            ),
          ),
        ],
      ),
    );
  }
}

///Class for Triple element filter
// ignore: must_be_immutable
class TripleFilterPaneWidget extends StatefulWidget {
  /// Exemple :
  /// ```dart
  /// firstList.map((item) =>
  /// DropdownMenuItem(
  ///   child: Text(item.label),
  ///   value: item.value,
  /// ))
  /// .toList()
  /// ```
  List<DropdownMenuItem<dynamic>> items1;

  /// Exemple :
  /// ```dart
  /// secondList.map((item) =>
  /// DropdownMenuItem(
  ///   child: Text(item.label),
  ///   value: item.value,
  /// ))
  /// .toList()
  /// ```
  List<DropdownMenuItem<dynamic>> items2;

  /// Exemple :
  /// ```dart
  /// thirdList.map((item) =>
  /// DropdownMenuItem(
  ///   child: Text(item.label),
  ///   value: item.value,
  /// ))
  /// .toList()
  /// ```
  List<DropdownMenuItem<dynamic>> items3;

  Icon icon1;
  Icon icon2;
  Icon icon3;
  dynamic hint1;
  dynamic hint2;
  dynamic hint3;

  /// if true [hint1], [hint2] and [hint3] must not be null
  bool isSearchable;
  Function onChanged1;
  Function onChanged2;
  Function onChanged3;
  Function onChecked;
  Function listAll;

  TripleFilterPaneWidget({
    Key key,
    @required this.items1,
    @required this.items2,
    this.items3,
    this.hint1,
    this.hint2,
    this.hint3,
    @required this.onChanged1,
    @required this.onChanged2,
    @required this.onChanged3,
    this.onChecked,
    @required this.listAll,
    this.icon1,
    this.icon2,
    this.icon3,
    this.isSearchable = false,
  }) : super(key: key);

  @override
  _TripleFilterPaneWidgetState createState() => _TripleFilterPaneWidgetState();
}

class _TripleFilterPaneWidgetState extends State<TripleFilterPaneWidget> {
  bool allChk = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 3.3),
                child: widget.isSearchable
                    ? SearchableDropdown(
                        closeButton: "Fermer",
                        isExpanded: true,
                        dialogBox: true,
                        items: widget.items1,
                        icon: widget.icon1,
                        hint: widget.hint1,
                        onChanged: (value) {
                          widget.onChanged1(value);
                        },
                      )
                    : DropdownButtonFormField(
                        isExpanded: true,
                        items: widget.items1,
                        icon: widget.icon1,
                        hint: widget.hint1,
                        onChanged: (value) {
                          widget.onChanged1(value);
                        },
                      ),
              ),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 3.3),
                child: widget.isSearchable
                    ? SearchableDropdown(
                        closeButton: "Fermer",
                        isExpanded: true,
                        dialogBox: true,
                        items: widget.items2,
                        icon: widget.icon2,
                        hint: widget.hint2,
                        onChanged: (value) {
                          widget.onChanged2(value);
                        },
                      )
                    : DropdownButtonFormField(
                        isExpanded: true,
                        icon: widget.icon2,
                        hint: widget.hint2,
                        items: widget.items2,
                        onChanged: (value) {
                          widget.onChanged2(value);
                        },
                      ),
              ),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 3.3),
                child: widget.isSearchable
                    ? SearchableDropdown(
                        closeButton: "Fermer",
                        isExpanded: true,
                        dialogBox: true,
                        items: widget.items2,
                        icon: widget.icon2,
                        hint: widget.hint2,
                        onChanged: (value) {
                          widget.onChanged2(value);
                        },
                      )
                    : DropdownButtonFormField<String>(
                        isExpanded: true,
                        icon: widget.icon3,
                        hint: widget.hint3,
                        items: widget.items3,
                        onChanged: (value) {
                          widget.onChanged3(value);
                        },
                      ),
              ),
            ],
          ),
          SizedBox(height: 5),
          SizedBox(
            width: (MediaQuery.of(context).size.width) - 30,
            child: Container(
              color: Colors.grey[100],
              child: CheckboxListTile(
                tristate: false,
                dense: true,
                activeColor: GreenLight,
                secondary: const Text('Tout'),
                value: allChk,
                onChanged: (valueNew) {
                  setState(() {
                    allChk = valueNew;
                  });
                  widget.onChecked(valueNew);
                  widget.listAll();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
