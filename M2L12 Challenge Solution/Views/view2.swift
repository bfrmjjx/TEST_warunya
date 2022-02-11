
import SwiftUI

struct View2: View {
    
    
    @ObservedObject var model = StudentModel()
    
    var body: some View {

        List(model.Students.sorted(by: {
            $0.totalScore > $1.totalScore
        })) { student in

            CardView(student: student)
            
        }
    }
}
