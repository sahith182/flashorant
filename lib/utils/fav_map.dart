import 'package:flutter/material.dart';

class FavDrop<T> extends StatefulWidget {
  const FavDrop({
    Key? key,
    required this.onChanged,
    required this.value,
    required this.tittle,
    required this.list,
    required this.selectionString,
  }) : super(key: key);

  final String tittle;
  final String selectionString;
  final List<String> list;
  final ValueChanged<String?>? onChanged;
  final String? value;

  @override
  _FavDropState createState() => _FavDropState();
}

class _FavDropState extends State<FavDrop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.tittle, style: TextStyle(fontSize: 18)),
        DropdownButton<String>(
          icon: Icon(Icons.arrow_downward_sharp, color: Color(0xffdc3d4b)),
          dropdownColor: Color(0xff292315),
          underline: Container(color: Color(0xffdc3d4b), height: 2),
          isExpanded: true,
          value: widget.value,
          hint: Text(widget.selectionString,
              style: TextStyle(color: Colors.white, fontSize: 14)),
          items: widget.list
              .map(
                (val) => DropdownMenuItem(
                    child: Text(
                      val,
                      style: TextStyle(color: Color(0xffE1DED8)),
                    ),
                    value: val),
              )
              .toList(),
          onChanged: widget.onChanged,
        ),
      ],
    );
  }
}
