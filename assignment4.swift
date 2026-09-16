//: Assignment 4
//:Inna Hoch
//: 9/22/2026

@propertyWrapper
struct NonEmpty {
    private var value: String

    var wrappedValue: String {
        get {
            value
        }
        set {
            if newValue.isEmpty {
                value = "Undeclared"
            } else {
                value = newValue
            }
        }
    }

    init(wrappedValue: String) {
        if wrappedValue.isEmpty {
            self.value = "Undeclared"
        } else {
            self.value = wrappedValue
        }
    }
}
// This enforces the name spaces to not be empty.. It loops back around to "Undelcared"
struct Student {
    @NonEmpty var firstName: String
    @NonEmpty var lastName: String
}
//This shows when the studdent completes the information. It runs as "Inna Hoch"
    var student = Student(firstName: "Inna", lastName: "Hoch")
    print(student.firstName)
    print(student.lastName)

//This here shows what happens if a value is not inputed.. It should run as "Undeclared Hoch"
    var student = Student(firstName: "", lastName: "Hoch")
    print(student.firstName)
    print(student.lastName)
