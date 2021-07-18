import 'package:flutter/material.dart';

class formText extends StatefulWidget {
  final String label;
  final bool readonlyye;
  final String normal;
  final String hint;
  final TextEditingController controllercc;

  formText(
      this.hint, this.label, this.controllercc, this.normal, this.readonlyye);

  @override
  _formTextState createState() => _formTextState();
}

class _formTextState extends State<formText> {
  TextStyle _labelStyle_l = TextStyle(color: Colors.black54);

  TextStyle _hintStyle_l = TextStyle(color: Colors.black);
  bool _showPassword1 = true;

  @override
  Widget build(BuildContext context) {
    return TextField(

      obscureText: widget.label == 'Password' ? _showPassword1:false,
      readOnly: widget.readonlyye,
      controller: widget.controllercc,
      decoration: InputDecoration(
        suffixIcon: widget.label == 'Password' ? GestureDetector(
          onTap: () {
            setState(() {
              _showPassword1 = !_showPassword1;
            });
          },
          child: Icon(
            _showPassword1 ? Icons.visibility : Icons.visibility_off,
          ),
        ) : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal[700]),
        ),
        floatingLabelBehavior:
        widget.normal == 'n' ? null : FloatingLabelBehavior.always,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7))),
        labelStyle: widget.normal == 'n' ? null : _labelStyle_l,
        hintStyle: widget.normal == 'n' ? null : _hintStyle_l,
        labelText: widget.normal == 'n' ? null : widget.label,
        hintText: widget.normal == 'n' ? null : widget.hint,
      ),
      autofocus: false,
    );
  }
}