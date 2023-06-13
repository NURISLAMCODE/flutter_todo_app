import 'package:flutter/material.dart';

class NewTaskPage extends StatelessWidget {
  const NewTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_rounded)),
        title: const Text("New Task"),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(right: 20, left: 20, bottom: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What is to be done",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(hintText: "Input text"),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Due Date",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(hintText: "Input text"),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    print(date);
                  },
                  icon: const Icon(Icons.calendar_month),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Due Date",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            DropdownButton(
              isExpanded: true,
              value: "Work",
              // ignore: prefer_const_literals_to_create_immutables
              items: [
                const DropdownMenuItem(
                  value: "Work",
                  child: Text("Work"),
                ),
                const DropdownMenuItem(
                  value: "Personal",
                  child: Text("Personal"),
                ),
                const DropdownMenuItem(
                  value: "Shopping",
                  child: Text("Shopping"),
                ),
                const DropdownMenuItem(
                  value: "Wishlist",
                  child: Text("Wishlist"),
                ),
              ],
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
