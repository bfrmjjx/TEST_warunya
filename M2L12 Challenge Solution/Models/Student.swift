
import Foundation

class Student: Identifiable, Decodable {

    var id:UUID?
    
    var studentId:Int
    var firstname:String
    var lastname:String
    var gender:String
    var totalScore:Int

}
