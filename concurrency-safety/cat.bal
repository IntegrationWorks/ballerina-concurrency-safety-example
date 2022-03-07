import ballerina/io;

isolated class Cat
{
    // Variables within an isolated class must be private or isolated themselves.
    // This is because isolated classes do not allow mutable fields. 
    private string name;
    private string colour;
    private int age;

    isolated function getCat(string n, string c, int a)
    {
        // The lock statement can reference multiple non-isolated variables without issue.
        lock {
            self.name = n;
            self.colour = c;
            self.age = a;
        }

        lock {
            io:println("Name: ", self.name, " Colour: ", self.colour, " Age: ", self.age);
        }

    }
}

