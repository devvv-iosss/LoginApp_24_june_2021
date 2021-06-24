

struct User {
    
    let name: String
    let surname: String
    
    let logIn: String
    let password: Int
}


extension User {
    
    static func getUser() -> User {
        User(name: "Anna", surname: "Devil", logIn: "A", password: 0)
    }
}
























































//struct User {
//
//    let name: String
//    let surname: String
//
//    let logIn: String
//    let password: Int
//}
//
//
//extension User {
//    static  func getUser() -> User {
//        User(name: "Anna", surname: "Devil", logIn: "AnnaDevil", password: 1)
//    }
//}


