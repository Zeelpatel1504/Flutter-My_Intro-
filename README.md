#Overview#:

This project implements a Profile Information Page for a hypothetical social networking application, developed using the Flutter framework. The page displays static user information organized into visually distinct sections like Contact Information, Education, Projects, and Skills. The primary goal of this assignment is to experiment with different Flutter layout widgets while following good coding practices, such as separating data from layout.

Project Specifications

The Profile Page consists of the following sections:

Contact Information: Displays the user's phone number, email address, and physical address.
Education: Lists the user's educational background, including institution name, degree, GPA, and institution logo.
Projects: Highlights key projects the user has worked on, with project titles, descriptions, and logos.
Skills: Displays the user's technical skills as visually distinct "chips."
Requirements Fulfilled
Four Distinct Sections: Contact Information, Education, Projects, and Skills.
Three Images: Includes a profile picture, institution logos in Education, and project logos.
Nested Row/Column Widget: Used in the Contact Information, Education, and Projects sections.
Scrolling: Enabled for the entire page using SingleChildScrollView, ensuring all content is accessible.
Nested Lists: Implemented in the Education and Projects sections, where lists of educational qualifications and projects are displayed using nested rows and columns.

Project Structure
This Flutter project follows the standard structure, with the following key files and directories:

lib/main.dart: The main entry point of the application. Contains the UserInfo data model and the layout of the Profile Page.
lib/sections/: Contains custom widgets for different sections (e.g., ContactInfoSection, EducationSection, ProjectsSection, SkillsSection).
assets/images/: Stores images such as the profile picture, institution logos, and project logos.
Data Model
User data is stored in dedicated model classes to separate content from layout. This promotes reusability and maintainability. The key data model classes include:

UserInfo: Stores the user's name, position, profile image path, contact information, education, projects, and skills.
ContactInfo: Stores the user's phone number, email address, and physical address.
EducationInfo: Stores the institution name, degree, GPA, and institution logo.
ProjectInfo: Stores project title, description, and project logo.
Widgets

The profile page layout is broken into multiple custom widgets for clarity and reuse:

ProfilePage: The main widget that organizes the page layout and renders each section.
ContactInfoSection: Displays contact information.
EducationSection: Displays a list of educational qualifications using nested rows and columns.
ProjectsSection: Displays a list of projects using nested rows and columns.
SkillsSection: Displays a list of skills using Chip widgets for a clear, visually distinct presentation.
How to Run the Application
Prerequisites
Flutter SDK installed on your system.
IDE or editor such as Visual Studio Code or Android Studio, with Flutter and Dart plugins.
Internet connection to download dependencies.

Steps to Run

Clone the repository:
Copy code
git clone <repository-url>

Navigate to the project directory:
Copy code
cd <project-directory>
Copy code
flutter clean 

Get dependencies:
Copy code
flutter pub get

Run the application:
Copy code
flutter run

The application will launch on your connected device or emulator, displaying the Profile Page.
Assets
Images used in this project are stored in the assets/images/ directory:

Profile Picture: zeel.jpeg
Institution Logos: iit.jpeg, th.jpeg
Project Logos: netflix.jpeg, crypto.jpeg, wishbox.jpeg
Ensure these images are present in the directory before running the application.

Code Structure
The code is structured to ensure that layout and data are separated for better maintainability. Data is encapsulated in model classes (UserInfo, ContactInfo, etc.), and the layout is handled by a tree of widgets in the ProfilePage class and its child components.

Key Widgets Used
AppBar: Displays the page title.
Column and Row: Organizes elements vertically or horizontally.
Container: Adds padding, borders, and background colors to sections.
Image: Displays images such as profile pictures, institution logos, and project logos.
ListView: Allows the entire page to be scrollable.
MaterialApp: Wraps the app with a basic material design structure.
Scaffold: Provides the basic page structure with an AppBar and Body.
SizedBox: Adds spacing between components.
Text: Displays textual information such as name, position, and details in each section.
SingleChildScrollView: Ensures the page is scrollable if content exceeds the screen height.
Additional Widgets
Chip: Used to display individual skills in the Skills section.
Wrap: Used in the Skills section to organize skill chips in dynamic rows and columns.
Scrolling and Nested Lists
Scrolling: The entire profile page is wrapped in a SingleChildScrollView, allowing the page to be scrollable if the content is too large to fit on the screen.

Nested Lists:

In the Education Section, each educational qualification is displayed using a Row containing the institution logo and a Column for the degree and GPA.
In the Projects Section, each project is displayed using a Row for the logo and a Column for the project title and description.
This hierarchical structure ensures that content is organized clearly and is easy to read.

Conclusion
This project demonstrates the use of various Flutter layout widgets and the separation of data from layout to create a responsive, scrollable, and well-organized Profile Page. The app complies with all specified requirements, including support for scrolling and the use of nested lists.
