import 'package:nanad/helpers/size_helper.dart';
import 'package:nanad/form/form_output_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BelajarForm extends StatefulWidget {
  const BelajarForm({super.key});

  @override
  State<BelajarForm> createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController jkController = TextEditingController();
  TextEditingController tglLahirController = TextEditingController();

  String _agama = "";

  final List<String> agamas = [
    "Islam",
    "Kristen",
    "Katolik",
    "Hindu",
    "Budha",
    "Konghucu"
  ];

  @override
  void initState() {
    tglLahirController.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: displayWidth(context) * 0.85,
          height: displayHeight(context) * 0.9,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Card(
                elevation: 8,
                margin: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Formulir Biodata",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 18),
                        TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                            hintText: "Nama Lengkap",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Nama';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 18),
                        TextFormField(
                          controller: jkController,
                          decoration: InputDecoration(
                            hintText: "Jenis Kelamin",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Jenis Kelamin';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 18),
                        TextFormField(
                          controller: tglLahirController,
                          decoration: InputDecoration(
                            hintText: "Tanggal Lahir",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Tanggal Lahir';
                            }
                            return null;
                          },
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                            );

                            if (pickedDate != null) {
                              String tgl =
                                  DateFormat("yyyy-MM-dd").format(pickedDate);
                              setState(() {
                                tglLahirController.text = tgl;
                              });
                            } else {
                              print("tanggal tidak dipilih");
                            }
                          },
                        ),
                        SizedBox(height: 18),
                        DropdownButtonFormField(
                          decoration: InputDecoration(
                            hintText: "Agama",
                            labelText: "Pilih Agama",
                            border: OutlineInputBorder(),
                          ),
                          items: agamas.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _agama = newValue!;
                            });
                          },
                        ),
                        SizedBox(height: 18),
                        SizedBox(
                          width: displayWidth(context) * 0.8,
                          height: displayHeight(context) * 0.075,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 255, 0, 140),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                                side: BorderSide(color: Colors.black),
                              ),
                            ),
                            child: Text(
                              'Simpan',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              _submit();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _formKey.currentState!.save();
      String name = nameController.text;
      String jk = jkController.text;
      String tgl = tglLahirController.text;
      String agama = _agama;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutputFormScreen(
            nama: name,
            jk: jk,
            tglLahir: tgl,
            agama: agama,
          ),
        ),
      );
    }
  }
}
