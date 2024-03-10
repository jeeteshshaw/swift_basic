import Foundation

struct Person {
    let firstName: String?
    let lastName: String?
    
    enum Errors: Error {
        case bothNamesAreNil
        case firstNameIsNil
        case lastNameIsNil
    }
    
//    func getFullName() throws -> String {
//        switch (firstName, lastName){
//            
//        case (.none, .none):
//            throw Errors.bothNamesAreNil
//            break
//        case (.none, .some):
//            throw Errors.firstNameIsNil
//            break
//        case (.some, .none):
//            throw Errors.lastNameIsNil
//            break
//            
//        case (.some(firstName), .some(lastName)):
//            return "\(firstName) \(lastName)"
//        case (.some(_), .some(_)):
//            
//        }
//    }
}
