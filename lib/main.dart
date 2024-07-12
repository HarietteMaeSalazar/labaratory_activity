import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Personal Profile'),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(48.0), 
              child: Material(
                color: Color.fromARGB(255, 133, 205, 241), 
                child: TabBar(
                  indicatorColor: Colors.blue, // color of the indicator
                  indicatorWeight: 1, // thickness of the indicator
                  indicatorPadding: EdgeInsets.all(8), // padding around the indicator
                  indicatorSize: TabBarIndicatorSize.label, // size of the indicator
                  labelColor: Colors.black, // color of the text labels
                  labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, fontFamily:'VesperLibre'), // style of the text labels
                  unselectedLabelColor: Colors.blueGrey, // color of the unselected text labels
                  unselectedLabelStyle: TextStyle(fontSize: 16),
                  tabs: [
                    Tab(icon: Icon(Icons.person, color: Colors.black), text: 'Personal Information'),
                    Tab(icon: Icon(Icons.school, color: Colors.black), text: 'Education'),
                    Tab(icon: Icon(Icons.lightbulb, color: Colors.black), text: 'Skills'),
                    Tab(icon: Icon(Icons.bookmark, color: Colors.black), text: 'Interests'),
                    Tab(icon: Icon(Icons.contacts, color: Colors.black), text: 'Contact'),
                  ],
                ),
              ),
            ),
          ),
          body: Container( 
            color: const Color.fromARGB(255, 165, 209, 250), 
            child: TabBarView(
             physics: const BouncingScrollPhysics(), // physics of the tab bar view
              children: [
                PersonalInformationTab(),
                EducationTab(),
                SkillsTab(),
                InterestsTab(),
                ContactTab(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PersonalInformationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0), 
      child: Container(
        width: MediaQuery.of(context).size.width - 200, 
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 139, 159, 189).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), 
            ),
          ],
        ),
        padding: const EdgeInsets.all(32.0), 
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/me.jpg'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Hariette Mae P. Salazar',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600, fontFamily:'VesperLibre'),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text('Age: 21', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500, fontFamily:'VesperLibre'), textAlign: TextAlign.center),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  '\u{00A0}\u{00A0}\u{00A0}\u{00A0}\u{00A0}\u{00A0}\u{00A0}\u{00A0}My name is Hariette Mae P. Salazar, and I come from San Roque, Bauan, Batangas. I am currently pursuing a Bachelor of Science in Information Technology with a major in Business Analytics at Batangas State University - TNEU. I was born on May 5, 2003, at Bauan General Hospital, and I am the eldest daughter in my family. I am passionate and dedicated to my studies, as well as the activities that I enjoy. At home, I am a very cheerful and joyful person who loves to tease my family. However, when I am at school, my personality changes. In my free time, I enjoy playing board games and watching movies.',
                  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500, fontFamily:'VesperLibre'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EducationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0), 
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 139, 159, 189).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), 
            ),
          ],
        ),
        padding: const EdgeInsets.all(32.0), 
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.school, color: Colors.black),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text('Batangas State University - TNEU', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600, fontFamily:'VesperLibre')),
                    ),
                  ],
                ),
                subtitle: Container (
                  margin: const EdgeInsets.only(left: 28),
                  child: const Text('• Dean Lister \n• 2021 - present', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500, fontFamily:'VesperLibre')),
                )
              ),
              ListTile(
                title: Row (
                  children: [
                    Icon(Icons.school, color: Colors.black),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text('Lemery Senior High School', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w600, fontFamily:'VesperLibre')),
                    ),
                  ],
                ),
                subtitle: Container (
                  margin: const EdgeInsets.only(left: 28),
                  child:const Text('• With High Honors \n• 2019-2021', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500, fontFamily:'VesperLibre')),
                )
              ),
               ListTile(
                title: Row(
                  children: [
                    Icon(Icons.school, color: Colors.black),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text(' St. Blaise Community Academy Inc.', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w600, fontFamily:'VesperLibre')),
                    ),
                  ],
                ),
                subtitle: Container (
                  margin: const EdgeInsets.only(left: 28),
                  child: const Text('• With Honors \n• 2015-2019', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500, fontFamily:'VesperLibre')),
                )
              ),
               ListTile(
                title: Row(
                  children: [
                    Icon(Icons.school, color: Colors.black),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text(' Luya Elementary School', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w600, fontFamily:'VesperLibre')),
                    ),
                  ],
                ),
                subtitle: Container(
                  margin: const EdgeInsets.only(left: 28),
                  child:const Text('• With Honors \n• 2009-2015', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500, fontFamily:'VesperLibre')),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0), 
      child: Container(
        width: MediaQuery.of(context).size.width - 64, // adjust width
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 139, 159, 189).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), 
            ),
          ],
        ),
        padding: const EdgeInsets.all(32.0), 
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.computer, color: Colors.black),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text('Technical Skills:', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600, fontFamily:'VesperLibre')),
                    ),
                  ],
                ),
                subtitle: Container (
                  margin: const EdgeInsets.only(left: 28),
                  child: const Text(' • HTML / CSS \n • Excel / Tableau \n • SQL / MYSQL', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500, fontFamily:'VesperLibre')),
                )
              ),
              ListTile(
                title: Row (
                  children: [
                    Icon(Icons.handshake, color: Colors.black),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text('Non-Technical Skills:', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w600, fontFamily:'VesperLibre')),
                    ),
                  ],
                ),
                subtitle: Container(
                  margin: const EdgeInsets.only(left: 28),
                  child: const Text(' • Communication: I can can communicate well to others \n • Time Management: I manage my time properly \n • Reselience : I stay positive even there are a lot of challenges', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500, fontFamily:'VesperLibre')),
                )
              ),
              ListTile(
                title: Row (
                  children: [
                    Icon(Icons.verified, color: Colors.black),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text('Certification / Seminars:', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w600, fontFamily:'VesperLibre')),
                    ),
                  ],
                ),
                subtitle: Container (
                  margin: const EdgeInsets.only(left: 28),
                  child: const Text(' • Tech Talks III: Beyond the Apex "Innovate, Elevate and Integrate: Navigating Technology for Sustainability" \n • Count Her In: Celebrate Achievements ', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500, fontFamily:'VesperLibre')),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InterestsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0), 
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 139, 159, 189).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), 
            ),
          ],
        ),
        padding: const EdgeInsets.all(32.0), 
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.desktop_mac, color: Colors.black),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text('Specialization:', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w600, fontFamily:'VesperLibre')),
                    ),
                  ],
                ),
                subtitle: Container(
                  margin: const EdgeInsets.only(left: 28),
                  child:const Text(' • Information Technology', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500, fontFamily:'VesperLibre')),
                )
              ),
              ListTile(
                title: Row (
                  children: [
                    Icon(Icons.code, color: Colors.black),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text('Professional Interest', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600, fontFamily:'VesperLibre')),
                    ),
                  ],
                ),
                subtitle: Container (
                  margin: const EdgeInsets.only(left: 28),
                  child: const Text(' • Web Development \n • Business Analytics \n • Database Management', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500, fontFamily:'VesperLibre')),
                )
              ),
              ListTile(
                title: Row(
                  children:[
                    Icon(Icons.book, color: Colors.black),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text('Research Areas', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w600, fontFamily:'VesperLibre')),
                    ),
                  ],
                ),
                subtitle: Container (
                  margin: const EdgeInsets.only(left: 28),
                  child: const Text(' • AI in Creativity \n • User Adaptation and Personalization', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500, fontFamily:'VesperLibre')),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0), 
      child: Container(
        width: MediaQuery.of(context).size.width - 64, // adjust width
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 139, 159, 189).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), 
            ),
          ],
        ),
        padding: const EdgeInsets.all(32.0), 
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.email, color: Colors.black),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text('Email:', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600, fontFamily:'VesperLibre')),
                    ),
                  ],
                ),
                subtitle: Container(
                  margin: const EdgeInsets.only(left: 28),
                  child: const Text(' • salazarhariette93@gmail.com', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500, fontFamily:'VesperLibre')),
                )
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.phone, color: Colors.black),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text('Phone:', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600, fontFamily:'VesperLibre')),
                    ),
                  ],
                ),
                subtitle: Container(
                  margin: const EdgeInsets.only(left: 28),
                  child:const Text(' • 0963-163-9105', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600, fontFamily:'VesperLibre' )),
                )
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.facebook, color: Colors.black),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text('Facebook:', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600, fontFamily:'VesperLibre')),
                    ),
                  ],
                ),
                subtitle: Container(
                  margin: const EdgeInsets.only(left:28),
                  child: const Text(' • https://www.facebook.com/hariette.salazar?mibextid=ZbWKwL', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600, fontFamily:'VesperLibre')),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
