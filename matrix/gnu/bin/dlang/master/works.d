module matrix.gnu.bin.dlang.master.works;

class MyClass
{
    interface MyInterface
    {
        void print(char c)(ref my) {
            readf("%s", studentCount); // same as above
        }
    }
}

class Student
{
    string name;
    int age;
    int studentCount;
    MyClass.MyInterface my;

    this(string name, int age)
    {
        this.name = name;
        this.age = age;
    }

    void printDetails()
    {
        writeln("Name: ", name);
        writeln("Age: ", age);
    }

    void incrementStudentCount()
    {
        studentCount++;
        my.print('S'); // calling the interface method
    }

    void printStudentCount()
    {
        writeln("Student count: ", studentCount);
        my.print('C'); // calling the interface method
    }

    void printStudentCountWithFormat()
    {
        writeln("Student count: %s", studentCount);
        my.print('F'); // calling the interface method
    }

    void printStudentCountWithFormatAndFormatSpecifiers()
    {
        writeln("Student count: %02d", studentCount);
        my.print('0'); // calling the interface method
    }

}