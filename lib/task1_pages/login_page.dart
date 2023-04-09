import 'package:application_form/task1_pages/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              const Text('প্রত্যয়নে লগইন করুন',style: TextStyle(fontSize: 20,color: Colors.deepPurple,fontWeight: FontWeight.bold),),
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
                          DefaultTabController(
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
                                      child: Text('জন্ম নিবন্ধনের মাধ্যম',style: TextStyle(color: Colors.deepPurple),),
                                    ),
                                    Tab( child: Text('জাতীয় পরিচয় পত্র েমাধ্যমে',style: TextStyle(color: Colors.deepPurple),),),
                                  ],
                                ),
                                body: TabBarView(
                                  children: [
                                    Center(child: Text('hello')),
                                    SingleChildScrollView(
                                      physics: BouncingScrollPhysics(),
                                      child: Padding(
                                        padding: const EdgeInsets.all(0.0),
                                        child: Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(height: 20,),
                                              const Padding(
                                                padding:  EdgeInsets.only(left: 15),
                                                child: Text('জাতীয় পরিচয় পএ নম্বর'),
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
                                              const SizedBox(height: 15,),
                                              const Padding(
                                                padding:  EdgeInsets.only(left: 15),
                                                child: Text('জন্ম তারিখ'),
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    flex:1,
                                                    child: Padding(
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
                                                  ),
                                                  Expanded(
                                                    flex:1,
                                                    child: Padding(
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
                                                  ),
                                                  Expanded(
                                                    flex:1,
                                                    child: Padding(
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
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 20,),
                                              const Padding(
                                                padding:  EdgeInsets.only(left: 15),
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
                                                  Text(' লগইন করুন',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
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

                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20,),
                                    const Padding(
                                      padding:  EdgeInsets.only(left: 15),
                                      child: Text('মোবাইল'),
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
                                    const SizedBox(height: 15,),
                                    const Padding(
                                      padding:  EdgeInsets.only(left: 15),
                                      child: Text('পাসওয়ার্ড'),
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
                                    const Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding:  EdgeInsets.only(right: 15,top: 5),
                                          child: Text('পাসওয়ার্ড ভুলে গেছেন?',style: TextStyle(color: Colors.deepPurple),),
                                        )),
                                    const SizedBox(height: 20,),
                                    Center(
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              minimumSize:Size(300, 40),
                                              backgroundColor: Colors.deepPurple
                                          ),
                                          onPressed: (){}, child: Text('লগইন')),
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('প্রত্যনে একাউন্ট নেই?'),
                                        InkWell(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                                            },
                                            child: Text(' ফ্রে রেজি করুন',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),)),
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 100),
                                        child: Column(
                                          children: [
                                            Text('data'),
                                            Text('data'),
                                            Text('data')
                                          ],
                                        ),
                                      ),
                                    )
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
