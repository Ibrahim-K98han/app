import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                    child: Image.asset('images/logo.png',height: 100,width: 100,)
                ),
              ),
              const SizedBox(height: 20,),
              const Text('প্রত্যয়নে প্রশাসনিক একাউন্ট তৈরি করুন',style: TextStyle(fontSize: 20,color: Colors.deepPurple,fontWeight: FontWeight.bold),),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0,bottom: 10,left: 20,right: 20),
                    child: Scaffold(
                      appBar:
                      const TabBar(
                        indicatorWeight: 6.0,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor:Colors.deepPurple ,
                        padding: EdgeInsets.only(top: 25.0),
                        tabs: [
                          Tab(
                            child: Text('নাগরিক লগইন করুন',style: TextStyle(color: Colors.deepPurple),),
                          ),
                          Tab( iconMargin: EdgeInsets.only(bottom: 50.0) , child: Text('প্রশাসনিক লগইন',style: TextStyle(color: Colors.deepPurple),),),
                        ],
                      ),
                      body: TabBarView(
                        children: [
                          Center(
                            child: Text('Hello'),
                          ),
                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20,),
                                    Text('সাধারন তথ্য',style: TextStyle(color: Colors.deepPurple,fontSize: 18,fontWeight: FontWeight.bold),),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex:1,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:  EdgeInsets.only(left: 0),
                                                child: Text('নাম (বাংলায়)'),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      filled: true,
                                                      contentPadding: EdgeInsets.all(10),
                                                      fillColor: Colors.grey.shade300,
                                                      border: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(10),
                                                        borderSide: BorderSide.none,
                                                      )
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ),
                                        Expanded(
                                            flex:1,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:  EdgeInsets.only(left: 0),
                                                  child: Text('নাম (ইংরেজি)'),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        filled: true,
                                                        contentPadding: EdgeInsets.all(10),
                                                        fillColor: Colors.grey.shade300,
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(10),
                                                          borderSide: BorderSide.none,
                                                        )
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 15,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text('জাতীয় পরিচয় পএ'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            filled: true,
                                            contentPadding: EdgeInsets.all(10),
                                            fillColor: Colors.grey.shade300,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide.none,
                                            )
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Expanded(
                                            flex:1,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:  EdgeInsets.only(left: 0),
                                                  child: Text('মোবাইল নাম্বার'),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        filled: true,
                                                        contentPadding: EdgeInsets.all(10),
                                                        fillColor: Colors.grey.shade300,
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(10),
                                                          borderSide: BorderSide.none,
                                                        )
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                        Expanded(
                                            flex:1,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:  EdgeInsets.only(left: 0),
                                                  child: Text('একাউন্ট নাম্বার'),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        filled: true,
                                                        contentPadding: EdgeInsets.all(10),
                                                        fillColor: Colors.grey.shade300,
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(10),
                                                          borderSide: BorderSide.none,
                                                        )
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 15,),
                                    Text('নিয়োগ এলাকার তথ্য',style: TextStyle(color: Colors.deepPurple,fontSize: 18,fontWeight: FontWeight.bold),),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            children: [
                                              Text('ঠিকানার ধরন'),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.grey.shade300,
                                                  ),

                                                  child: DropdownButton(
                                                    value: dropdownValue,
                                                    icon: const Icon(Icons.arrow_drop_down_outlined),
                                                    elevation: 16,
                                                    style: const TextStyle(color: Colors.deepPurple),

                                                    onChanged: (String? value) {
                                                      setState(() {
                                                        dropdownValue = value!;
                                                      });
                                                    },
                                                    items: list.map<DropdownMenuItem<String>>((String value) {
                                                      return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList(),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            children: [
                                              Text('বিভাগ'),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.grey.shade300,
                                                  ),

                                                  child: DropdownButton(
                                                    value: dropdownValue,
                                                    icon: const Icon(Icons.arrow_drop_down_outlined),
                                                    elevation: 16,
                                                    style: const TextStyle(color: Colors.deepPurple),

                                                    onChanged: (String? value) {
                                                      setState(() {
                                                        dropdownValue = value!;
                                                      });
                                                    },
                                                    items: list.map<DropdownMenuItem<String>>((String value) {
                                                      return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList(),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            children: [
                                              Text('জেলা'),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.grey.shade300,
                                                  ),

                                                  child: DropdownButton(
                                                    value: dropdownValue,
                                                    icon: const Icon(Icons.arrow_drop_down_outlined),
                                                    elevation: 16,
                                                    style: const TextStyle(color: Colors.deepPurple),

                                                    onChanged: (String? value) {
                                                      setState(() {
                                                        dropdownValue = value!;
                                                      });
                                                    },
                                                    items: list.map<DropdownMenuItem<String>>((String value) {
                                                      return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList(),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            children: [
                                              Text('থানা/উপজেলা'),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.grey.shade300,
                                                  ),

                                                  child: DropdownButton(
                                                    value: dropdownValue,
                                                    icon: const Icon(Icons.arrow_drop_down_outlined),
                                                    elevation: 16,
                                                    style: const TextStyle(color: Colors.deepPurple),

                                                    onChanged: (String? value) {
                                                      setState(() {
                                                        dropdownValue = value!;
                                                      });
                                                    },
                                                    items: list.map<DropdownMenuItem<String>>((String value) {
                                                      return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList(),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text('সিটি কর্পোরেশর '),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            filled: true,
                                            contentPadding: EdgeInsets.all(10),
                                            fillColor: Colors.grey.shade300,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide.none,
                                            )
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20,),
                                    Center(
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              minimumSize:Size(300, 40),
                                              backgroundColor: Colors.deepPurple
                                          ),
                                          onPressed: (){}, child: Text('নিবন্ধন করুন')),
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('প্রত্যনে একাউন্ট আছে?'),
                                        Text(' লদইন করুন',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
