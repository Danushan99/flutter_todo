import 'package:flutter/material.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({Key? key}) : super(key: key);

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {

  TextEditingController titleContoller = TextEditingController();
  TextEditingController descriptionContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
           TextField(
            controller: titleContoller,
            decoration: InputDecoration(hintText: "Title"),
          ),
          const SizedBox(height: 20,),
           TextField(
             controller: descriptionContoller,
            decoration: InputDecoration(hintText: "Description"),
            minLines: 5,
            maxLength: 20,
            keyboardType: TextInputType.multiline,
            maxLines: null,
          ),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: () {}, child: const Text("Submit"))
        ],
      ),
    );
  }
  void submitData(){
// det data from form
final title = titleContoller.text;
final description = descriptionContoller.text;
final body ={
  "title": title,
  "description":description,
  "is_completed": false
};
  }
}
