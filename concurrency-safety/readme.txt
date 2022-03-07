Concurrent Safety and Multithreading in Ballerina:
Ballerina natively supports multithreading and has been built with solutions to prevent the issues faced by other languages that incorporated multithreading 
later such as c++. The simplest way to implement multithreading into your ballerina program is with the worker statement. A worker statement within a function 
will delegate some tasks to the worker and it will immediately execute any code it has been given. This is pog but can cause issues in large applications where
workers and other functions are using shared resources. Ballerina has also thought of this and introduced concurrency safety. Using lock statements and 
isolation we can reap the benefits of multithreading without all the unpredictable results that it can cause. The lock statement prevents threads from doing 
whatever they want by preventing more than one thread running the code inside at any one time. Isolation can be applied to functions, classes, and variables. 
Isolated functions have extra constraints compared to normal functions to enable code to work as expected in multithreaded applications. Isolated functions 
must have access to mutable state only through its parameters, have unrestricted access to immutable state and can only call functions that are isolated.
Isolated variables once declared can only be accessed inside of a lock statement. Additionally, only one isolated variable can be accessed per lock statement. 
Isolated classes continue the trend with more constraints. Isolated classes can only be accessed using the self statement and inside of a lock statement. 
All of the isolated features in ballerina must be declared with “isolated” before whatever it is you’re building.
