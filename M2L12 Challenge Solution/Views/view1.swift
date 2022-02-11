
import SwiftUI

struct View1: View {
    
    
    @ObservedObject var model = StudentModel()
    
    var body: some View {
        
        List(model.Students.sorted(by: {
            $0.studentId < $1.studentId
        })) { student in
            
            CardView(student: student)
            
        }
    }
}
