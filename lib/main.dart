import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sann Chou Lay Pheng CV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const MyCVPage(),
    );
  }
}

class MyCVPage extends StatelessWidget {
  const MyCVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Top Header Section (Matches your template style)
            Container(
              color: const Color(0xFFE8E5E0), // Soft beige background
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    // Ensure 'assets' is spelled correctly and the filename is exact
                    backgroundImage: const AssetImage('assets/profile.jpg'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "SANN CHOU LAY PHENG",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        "TELECOMMUNICATION STUDENT",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey[700],
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // 2. Main Body Content
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Column: Contact, Education & Skills
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSectionHeader(Icons.phone, "CONTACT"),
                        const Text("+855 93 598661"), //
                        const Text("Sanchoulaypheng678@gmail.com"), //
                        const Text("Phnom Penh, Cambodia"),
                        const SizedBox(height: 35),

                        _buildSectionHeader(Icons.school, "EDUCATION"),
                        const Text(
                          "2025: Third Year Student",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ), //
                        const Text("Institute of Technology of Cambodia"), //
                        const SizedBox(height: 10),
                        const Text("2020-2022: High School"), //
                        const Text("Sihanouk High School"), //
                        const SizedBox(height: 35),

                        _buildSectionHeader(Icons.psychology, "SKILLS"), //
                        _buildBulletPoint("C, C++, Java, Python"),
                        _buildBulletPoint("VHDL & Quartus Prime"),
                        _buildBulletPoint("MATLAB (PCM Projects)"),
                        _buildBulletPoint("Flutter & Firebase"),
                        _buildBulletPoint("Antenna & Microwave Engineering"),
                        _buildBulletPoint("Networking (CISCO)"),
                      ],
                    ),
                  ),

                  const SizedBox(width: 60),

                  // Right Column: Summary, Experience & References
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSectionHeader(Icons.person_outline, "SUMMARY"),
                        const Text(
                          "I'm a Third-year Telecommunication student with a strong interest in coding and technology. I enjoy working in teams and am always eager to learn new things. Fluent in Khmer and English.", //
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 16, height: 1.5),
                        ),
                        const SizedBox(height: 35),

                        _buildSectionHeader(
                          Icons.work_outline,
                          "EXPERIENCE & PROJECTS",
                        ),
                        _buildProjectItem(
                          "Microwave & Antenna Engineering",
                          "Studied antenna theory and microwave propagation for communication systems.",
                        ), //
                        _buildProjectItem(
                          "VHDL & FPGA Design",
                          "Developed 'peka1' and 'Testingcode' seven-segment decoders using Quartus Prime.",
                        ), //
                        _buildProjectItem(
                          "Flutter Development",
                          "Created the 'CAT-CAFE' mobile app with Firebase integration.",
                        ), //
                        _buildProjectItem(
                          "Technical Translation",
                          "Translated Siemens HiPath 3800 PABX documentation from Khmer to English.",
                        ), //
                        const SizedBox(height: 35),

                        _buildSectionHeader(Icons.group, "REFERENCES"),
                        const Text(
                          "Dr. SRENG Sokchenda",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ), //
                        const Text(
                          "Head of Dept. of Telecommunication and Network Engineering",
                        ), //
                        const Text("Institute of Technology of Cambodia"), //
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- Helper Widgets to keep code clean ---

  Widget _buildSectionHeader(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 22, color: Colors.black87),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
          const Divider(thickness: 1, color: Colors.black26),
        ],
      ),
    );
  }

  Widget _buildProjectItem(String title, String desc) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            desc,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 15,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "• ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 15))),
        ],
      ),
    );
  }
}
