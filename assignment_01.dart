abstract class Role {
  void displayRole();
}

// Person class start that implements Role abstract class
class Person implements Role {
  String name;
  int age;
  String address;
  Person(this.name, this.age, this.address);

  @override
  void displayRole() {}
}
// Person class end that implements Role abstract class

// Student class start
class Student extends Person {
  int studentID;
  String grade;
  List<int> courseScores = [];

  Student(super.name, super.age, super.address, this.studentID, this.grade,
      this.courseScores);

  @override
  void displayRole() {
    print("Role : Student");
  }

  void studentInfo() {
    print("Student Name : $name");
    print("Student Age : $age");
    print("Student Address :$address");
    print("Student ID :$studentID");
    print("Student Grade :$grade");
  }

  void average() {
    int sum = 0;
    for (int score in courseScores) {
      sum += score;
    }

    double average = sum / courseScores.length;

    print("Course Scores: $courseScores");
    print("Course Scores Average: $average");
  }
}
// Student class end

// Teacher class start
class Teacher extends Person {
  int teacherID;
  List<String> coursesTaught = [];
  Teacher(
      super.name, super.age, super.address, this.teacherID, this.coursesTaught);

  @override
  void displayRole() {
    print("Role : Teacher");
  }

  void teacherInfo() {
    print("Teacher Name : $name");
    print("Teacher Age : $age");
    print("Teacher Address :$address");
    print("Teacher ID :$teacherID");
  }

  void displayCourse() {
    print("Courses Taught:");
    for (String course in coursesTaught) {
      print(course);
    }
  }
}
// Teacher class end

void main() {
  Student student =
      Student("Hafizur Rahman", 22, "Pabna", 12, 'A+', [60, 80, 85]);
  student.displayRole();
  student.studentInfo();
  student.average();
  Teacher teacher =
      Teacher('Almas', 25, 'Gazipur', 102, ['Math', 'English', 'Bangla']);
  teacher.displayRole();
  teacher.teacherInfo();
  teacher.displayCourse();
}
