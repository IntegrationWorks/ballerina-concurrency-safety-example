import ballerina/io;

isolated int counter = 0;
isolated int reverseCounter = 1001;

function locked()
{
    //You must use a lock statement to access a isolated variable of any datatype.
    //Lock statements are also restricted to one isolated variable.
    lock {
        foreach int i in 1 ... 1000 {
            counter += 1;
            // reverseCounter -=1;
        }
        io:println(counter);
    }
    
    lock {
        foreach int i in 1...1000 {
            reverseCounter -= 1;
        }
    }
}

isolated function isolatedFunction()
{
    lock
    {
        foreach int i in 1 ... 1000 {
            counter += 1;
        }
        io:println(counter);
    }
}

Cat cat = new();

public function main() {
    locked();
    isolatedFunction();
    threaded();
}
