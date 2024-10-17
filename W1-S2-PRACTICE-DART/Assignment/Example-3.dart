void main() {
  // List of student scores
  List<int> scores = [45, 67, 82, 49, 51, 78, 92, 30];

  // use where to 
 var passStudent = scores.where((scores) => scores  >= 50);
  // Print the list of students who passed
 print(passStudent.toList());
 //print the length of students who passed
 print("${passStudent.length} students passed");

}