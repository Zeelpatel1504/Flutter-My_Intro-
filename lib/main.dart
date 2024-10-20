import 'package:flutter/material.dart';

// Data Model Classes
class UserInfo {
  final String name;
  final String position;
  final String profileImagePath;
  final ContactInfo contactInfo;
  final List<EducationInfo> education;
  final List<ProjectInfo> projects;
  final List<String> skills;

  UserInfo({
    required this.name,
    required this.position,
    required this.profileImagePath,
    required this.contactInfo,
    required this.education,
    required this.projects,
    required this.skills,
  });
}

class ContactInfo {
  final String phone;
  final String email;
  final String address;

  ContactInfo({
    required this.phone,
    required this.email,
    required this.address,
  });
}

class EducationInfo {
  final String logoPath;
  final String institution;
  final String degree;
  final String gpa;

  EducationInfo({
    required this.logoPath,
    required this.institution,
    required this.degree,
    required this.gpa,
  });
}

class ProjectInfo {
  final String logoPath;
  final String title;
  final String description;

  ProjectInfo({
    required this.logoPath,
    required this.title,
    required this.description,
  });
}

void main() {
  // Create user data
  UserInfo userInfo = UserInfo(
    name: 'Patel Zeel Rakshitkumar',
    position: 'Master\'s Student at Illinois Institute of Technology',
    profileImagePath: 'assets/images/zeel.jpeg',
    contactInfo: ContactInfo(
      phone: '+1 (708) 307-6419',
      email: 'zpatel15@hawk.iit.edu',
      address: '2203 Tanglewood Dr, Hammond, Indiana - 46323',
    ),
    education: [
      EducationInfo(
        logoPath: 'assets/images/iit.jpeg',
        institution: 'Illinois Institute of Technology',
        degree: 'Master\'s in Computer Science',
        gpa: 'GPA: 3.33',
      ),
      EducationInfo(
        logoPath: 'assets/images/th.jpeg',
        institution: 'Gujarat Technological University',
        degree: 'Bachelor\'s in Computer Science',
        gpa: 'GPA: 8.42/10',
      ),
    ],
    projects: [
      ProjectInfo(
        logoPath: 'assets/images/netflix.jpeg',
        title: 'Netflix Clone',
        description: 'Developed a Netflix-like video streaming platform using Python Django and PostgreSQL.',
      ),
      ProjectInfo(
        logoPath: 'assets/images/crypto.jpeg',
        title: 'Cryptocurrency Price Prediction',
        description: 'Used machine learning algorithms to predict cryptocurrency prices using historical data.',
      ),
      ProjectInfo(
        logoPath: 'assets/images/wishbox.jpeg',
        title: 'Wishbox Shipment System',
        description: 'Designed and developed a shipment tracking system using HTML, JavaScript, and Node.js.',
      ),
    ],
    skills: [
      'C', 'C++', 'HTML/CSS', 'JavaScript', 'Python', 'Django', 'Dart', 'Flutter',
      'SQL', 'Postgres', 'DSA', 'NLP', 'Machine Learning', 'Artificial Intelligence', 'Git',
    ],
  );

  runApp(MyApp(userInfo: userInfo));
}

class MyApp extends StatelessWidget {
  final UserInfo userInfo;

  MyApp({required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(userInfo: userInfo),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final UserInfo userInfo;

  ProfilePage({required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 800, // Set a fixed width to make content more centered
            padding: EdgeInsets.all(20), // Add padding to the container
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Profile Picture
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(userInfo.profileImagePath),
                ),
                SizedBox(height: 16),
                // Name and Position
                Text(
                  userInfo.name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900], // Dark blue for the name
                  ),
                  textAlign: TextAlign.center, // Center the text
                ),
                Text(
                  userInfo.position,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center, // Center the text
                ),
                SizedBox(height: 16),
                // Contact Information Section
                SectionTitle(title: 'Contact Information', color: const Color.fromRGBO(21, 101, 192, 1)),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 243, 144, 215), // Green background for contact section
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: ContactInfoSection(contactInfo: userInfo.contactInfo),
                ),
                SizedBox(height: 24),
                // Education Section
                SectionTitle(title: 'Education', color: Colors.blue[800]),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.amber[100], // Amber background for education section
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: EducationSection(education: userInfo.education),
                ),
                SizedBox(height: 24),
                // Projects Section
                SectionTitle(title: 'Projects', color: Colors.blue[700]),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.pink[100], // Pink background for projects section
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: ProjectsSection(projects: userInfo.projects),
                ),
                SizedBox(height: 24),
                // Skills Section
                SectionTitle(title: 'Skills', color: Colors.blue[600]),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[50], // Light blue background for skills section
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: SkillsSection(skills: userInfo.skills),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Contact Information Section
class ContactInfoSection extends StatelessWidget {
  final ContactInfo contactInfo;

  ContactInfoSection({required this.contactInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContactInfoItem(
          icon: Icons.phone,
          label: 'Phone',
          value: contactInfo.phone,
          iconColor: Colors.blue[400],
        ),
        ContactInfoItem(
          icon: Icons.email,
          label: 'Email',
          value: contactInfo.email,
          iconColor: Colors.blue[400],
        ),
        ContactInfoItem(
          icon: Icons.location_on,
          label: 'Address',
          value: contactInfo.address,
          iconColor: Colors.blue[400],
        ),
      ],
    );
  }
}

class ContactInfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color? iconColor;

  ContactInfoItem({
    required this.icon,
    required this.label,
    required this.value,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          SizedBox(width: 16),
          Text(
            '$label:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(width: 8),
          Flexible(
            child: Text(
              value,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

// Education Section
class EducationSection extends StatelessWidget {
  final List<EducationInfo> education;

  EducationSection({required this.education});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: education.map((edu) {
        return Column(
          children: [
            EducationItem(
              logoPath: edu.logoPath,
              institution: edu.institution,
              degree: edu.degree,
              gpa: edu.gpa,
            ),
            SizedBox(height: 16),
          ],
        );
      }).toList(),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String logoPath;
  final String institution;
  final String degree;
  final String gpa;

  EducationItem({
    required this.logoPath,
    required this.institution,
    required this.degree,
    required this.gpa,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          logoPath,
          width: 50,
          height: 50,
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              institution,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(degree),
            Text(gpa),
          ],
        ),
      ],
    );
  }
}

// Projects Section
class ProjectsSection extends StatelessWidget {
  final List<ProjectInfo> projects;

  ProjectsSection({required this.projects});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: projects.map((project) {
        return Column(
          children: [
            ProjectItem(
              logoPath: project.logoPath,
              title: project.title,
              description: project.description,
            ),
            SizedBox(height: 16),
          ],
        );
      }).toList(),
    );
  }
}

class ProjectItem extends StatelessWidget {
  final String logoPath;
  final String title;
  final String description;

  ProjectItem({
    required this.logoPath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          logoPath,
          width: 50,
          height: 50,
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(description),
            ],
          ),
        ),
      ],
    );
  }
}

// Skills Section
class SkillsSection extends StatelessWidget {
  final List<String> skills;

  SkillsSection({required this.skills});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center, // Center the entire section
      padding: EdgeInsets.symmetric(vertical: 10), // Some padding for vertical space
      child: Wrap(
        spacing: 12.0, // Space between columns
        runSpacing: 12.0, // Space between rows
        alignment: WrapAlignment.center, // Ensure skills are centered
        children: skills.map((skill) {
          return SkillChip(label: skill);
        }).toList(),
      ),
    );
  }
}

// Reusable SkillChip widget
class SkillChip extends StatelessWidget {
  final String label;

  SkillChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.lightBlueAccent,
      labelStyle: TextStyle(color: Colors.white),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8), // Padding inside each chip
    );
  }
}

// Section Title Widget
class SectionTitle extends StatelessWidget {
  final String title;
  final Color? color;

  SectionTitle({required this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
        ),
      ),
    );
  }
}
