module matrix.gnu.bin.dlang.master.will;

class MyClass
{
    interface MyInterface
    {
        void print(char c)(ref my) {
            readf("%s", &studentCount);
        }
    }
}

class MyStruct
{
    int studentCount;
}

void main()
{
    MyClass myClass;
    MyStruct myStruct;

    myClass.myInterface.print('a')(myStruct);
    writeln("Student count: ", myStruct.studentCount);
}
