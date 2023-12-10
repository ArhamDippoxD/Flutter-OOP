abstract class Role {
  void displayRole() {}
}

class Person implements Role {
  String _name;
  String getName() {
    return _name;
  }

  void setName(String name) {
    _name = name;
  }

  int _age;
  int getAge() {
    return _age;
  }

  void setAge(int age) {
    _age = age;
  }

  String _address;

  String getAddress() {
    return _address;
  }

  void setAddress(String address) {
    _address = address;
  }

  Person(
    this._name,
    this._age,
    this._address,
  );

  @override
  void displayRole() {
    print("Role:Person");
  }
}

class Student extends Person {
  String StudentID = "101";
  List<int> courseScores = [];

  Student(String name, int age, String address, this.courseScores)
      : super(name, age, address) {
    super.setName(name);
    super.setAge(age);
    super.setAddress(address);
    name = super.getName();
    age = super.getAge();
    address = super.getAddress();
  }

  double sum = 0;

  double AvgScore() {
    for (int element in courseScores) {
      sum += element;
    }
    return (sum / courseScores.length);
  }

  void displayRole() {
    print("Role:Student");
  }
}

class Teacher extends Person {
  String TeacherID = "701";
  List<String> coursesTaught = [];
  Teacher(String name, int age, String address, this.coursesTaught)
      : super(name, age, address);


  void displayCourses() {
    for (String element in coursesTaught) {
      print("- $element");
    }
    print("\n");
  }

  void displayRole() {
    print("Role:Teacher");
  }
}

void main() {
  print("Student Information:");
  Student newStudent =
      new Student("John Doe", 20, "123 Main Street", [90, 85, 82]);
  newStudent.displayRole();
  print('Name: ' + newStudent.getName());
  print('Age: ${newStudent.getAge()}');
  print('Address: ' + newStudent.getAddress());
  print("Average Score: " + newStudent.AvgScore().toString());
  Teacher newTeacher = new Teacher(
      "Mrs Smith", 35, "456 Oak St.", ["Math", "English", "Bangla"]);
  print("Teacher Information:");
  print('Name: ' + newTeacher.getName());
  print('Age: ${newTeacher.getAge()}');
  print('Address: ' + newTeacher.getAddress());
  print("Courses taught: ");
  newTeacher.displayCourses();
}
