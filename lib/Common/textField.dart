import 'package:flutter/material.dart';
import 'package:skedaddle/Utils/colors.dart';

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

  TextStyle _hintStyle_l = TextStyle(color: Colors.white);
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

class UiFormText extends StatefulWidget {
  final String label;
  final bool readonlyye;
  final bool normalFeild;
  final String hint;
  final TextEditingController controllercc;

  UiFormText(
      {this.hint, this.label, this.controllercc, this.normalFeild = false, this.readonlyye});

  @override
  _UiFormTextState createState() => _UiFormTextState();
}

class _UiFormTextState extends State<UiFormText> {
  TextStyle _labelStyle_l = TextStyle(color: Colors.black54);

  TextStyle _hintStyle_l = TextStyle(color: UiWhiteColor);
  bool _showPassword1 = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // cursorColor:Colors.white,
      style: TextStyle(color: Colors.white),
      obscureText: widget.label == 'Password' ? _showPassword1:false,
      readOnly: widget.readonlyye,
      controller: widget.controllercc,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white30,
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
            borderRadius: BorderRadius.all(Radius.circular(11)),
          borderSide: BorderSide(color: Colors.white30),
        ),
        floatingLabelBehavior:
        widget.normalFeild == true ? null : FloatingLabelBehavior.always,
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white30),
            borderRadius: BorderRadius.all(Radius.circular(11))),
        labelStyle: widget.normalFeild == true ? null : _labelStyle_l,
        hintStyle: _hintStyle_l,
        labelText: widget.normalFeild == true ? null : widget.label,
        hintText:widget.hint,
      ),
      autofocus: false,
    );
  }
}