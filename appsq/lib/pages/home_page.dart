import 'package:flutter/material.dart';
import '../db/user_model.dart';
import '../db/user_repo.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserModel> users = [];

  final nameC = TextEditingController();
  final ageC = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    users = await UserRepo.getAll();
    setState(() {});
  }

  Future<void> addUser() async {
    await UserRepo.insert(
      UserModel(name: nameC.text, age: int.parse(ageC.text)),
    );

    nameC.clear();
    ageC.clear();
    loadData();
  }

  Future<void> editUser(UserModel u) async {
    nameC.text = u.name;
    ageC.text = u.age.toString();

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Edit Data"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(controller: nameC),
            TextField(controller: ageC),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () async {
              await UserRepo.update(
                UserModel(
                  id: u.id,
                  name: nameC.text,
                  age: int.parse(ageC.text),
                ),
              );
              Navigator.pop(context);
              loadData();
            },
            child: Text("Simpan"),
          ),
        ],
      ),
    );
  }

  Future<void> deleteUser(UserModel u) async {
    await UserRepo.delete(u.id!);
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SQFLite CRUD"),
      ),
      body: Column(
        children: [
          // FORM INPUT
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  controller: nameC,
                  decoration: InputDecoration(labelText: "Nama"),
                ),
                TextField(
                  controller: ageC,
                  decoration: InputDecoration(labelText: "Umur"),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: addUser,
                  child: Text("Tambah"),
                )
              ],
            ),
          ),

          // LIST DATA
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (_, i) {
                final item = users[i];

                return ListTile(
                  title: Text(item.name),
                  subtitle: Text("Umur: ${item.age}"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // EDIT
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () => editUser(item),
                      ),

                      // DELETE
                      IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => deleteUser(item),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
