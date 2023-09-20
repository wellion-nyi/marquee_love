import 'package:flutter/material.dart';
import 'package:orientation_p/widgets/landscape.dart';

class PortraitWidget extends StatefulWidget {
  const PortraitWidget({super.key});

  @override
  State<PortraitWidget> createState() => _PortraitWidgetState();
}

class _PortraitWidgetState extends State<PortraitWidget> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  String errorTextName = "It can't be Empty";
  final _erroMsg = [];

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;
    
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formkey,
              child: TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    _erroMsg.add(errorTextName);
                    return errorTextName;
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  labelText: 'Portrait',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  var con = _formkey.currentState!.validate();
                  if (con) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (contexg) => LandscapeWidget(
                              name: nameController.text,
                            )));
                  } else {
                    print(_erroMsg);
                  }
                },
                child: const Text("Start"))
          ],
        ),
      ),
    );
  }
}
