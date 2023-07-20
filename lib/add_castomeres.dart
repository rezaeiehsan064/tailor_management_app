import 'package:flutter/material.dart';

class add_castomeres extends StatefulWidget {
  const add_castomeres({super.key});

  @override
  State<add_castomeres> createState() => _add_castomeresState();
}

class _add_castomeresState extends State<add_castomeres> {
  TextEditingController textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String _firstName = '';
  String _lastName = '';
  String _phoneNumber = '';
  String _andazeh = '';
  var data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('مشتری جدید')),
      backgroundColor: Colors.white30,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'اسم',
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'لطفا اسم خود را وارد کنید';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _firstName = value!;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'تخلص',
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'لطفا تخلص خود را وارد کنید';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _lastName = value!;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: ' شماره تماس',
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'لطفا شماره تماس خود را وارد کنید';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _phoneNumber = value!;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'تاریخ',
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'لطفا تاریخ را وارد کنید';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        data = value!;
                      },
                    ),
                  ),
                  Divider(color: Colors.grey),
                  Center(
                      child: Text(
                        'اندازه',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                        ),
                      )),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'قد بالتنه',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onSaved: (value) {
                            _andazeh = value!;
                          },
                        ),
                      ),
                      SizedBox(width: 10), // جدا کننده بین دو باکس
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'شانه',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onSaved: (value) {
                            _andazeh = value!;
                          },
                        ),
                      ),
                      SizedBox(width: 10), // جدا کننده بین دو باکس
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'دوره',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onSaved: (value) {
                            _andazeh = value!;
                          },
                        ),
                      ),
                      SizedBox(width: 10), // جدا کننده بین دو باکس
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'کمر',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onSaved: (value) {
                            _andazeh = value!;
                          },
                        ),
                      ),
                      SizedBox(width: 10), // جدا کننده بین دو باکس
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'سورین',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onSaved: (value) {
                            _andazeh = value!;
                          },
                        ),
                      ),
                      SizedBox(width: 10), // جدا کننده بین دو باکس
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'استین',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onSaved: (value) {
                            _andazeh = value!;
                          },
                        ),
                      ),
                      SizedBox(width: 10), // جدا کننده بین دو باکس
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'قد کت',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onSaved: (value) {
                            _andazeh = value!;
                          },
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'قد دامن',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onSaved: (value) {
                            _andazeh = value!;
                          },
                        ),
                      ),
                      SizedBox(width: 10), // جدا کننده بین دو باکس
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'قد پیراهن',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onSaved: (value) {
                            _andazeh = value!;
                          },
                        ),
                      ),
                      SizedBox(width: 10), // جدا کننده بین دو باکس
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'قد شلوار',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onSaved: (value) {
                            _andazeh = value!;
                          },
                        ),
                      ),
                      SizedBox(width: 10), //
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'قد زانو',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onSaved: (value) {
                            _andazeh = value!;
                          },
                        ),
                      ),
                      SizedBox(width: 10), // جدا کننده بین دو باکس
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'قد مانتو',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onSaved: (value) {
                            _andazeh = value!;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10,
                        height: 10,
                      ), // جدا کننده بین دو باکس
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'دم پا',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onSaved: (value) {
                            _andazeh = value!;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Divider(color: Colors.grey),
                  MaterialButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // انجام عملیات ثبت نام
                        print('First Name : $_firstName');
                        print('Last Name : $_lastName');
                        print('Phone Number : $_phoneNumber');
                        print('Andazeh : $_andazeh');
                      }else{
                        saveValue('$_andazeh');
                      }

                      // Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => MainScreen(),));

                    },
                    child: Center(
                      child: Text(
                        'ثبت',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Colors.black54,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveValue(String value) {
  }
}
