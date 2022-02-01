import 'package:flutter/material.dart';

class TodoBottomSheet extends StatefulWidget {
  final String title;
  final String buttonName;
  final String? initialName;
  const TodoBottomSheet(this.title, this.buttonName, {this.initialName, Key? key})
      : super(key: key);

  @override
  State<TodoBottomSheet> createState() => _TodoBottomSheetState();
}

class _TodoBottomSheetState extends State<TodoBottomSheet> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController(text: widget.initialName);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            Form(
              key: _formKey,
              child: TextFormField(
                controller: _controller,
                autofocus: true,
                textAlign: TextAlign.center,
                validator: (value) {
                  if (value != null) {
                    return value.trim().isEmpty ? "Title Required" : null;
                  } else {
                    return "Title Required";
                  }
                },
              ),
            ),
            MaterialButton(
              child: Text(
                widget.buttonName,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  Navigator.pop(context, _controller.text);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
