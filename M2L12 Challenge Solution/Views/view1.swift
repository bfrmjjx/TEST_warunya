
import SwiftUI

struct view1: View {
    
    
    @ObservedObject var model = StudentModel()
    
    var body: some View {
        
        List(model.Students) { student in
            
            
            
            VStack(alignment: .leading) {
                
                HStack {
                    
                    
                    VStack(alignment: .leading){
                        
                        Text("รหัสนักเรียน \(student.studentId)")
                        
                        
                        HStack{
                            Text("ชื่อ-นามสกุล ")
                            Text(student.gender == "male" ? "Mr." : "Miss."  )
                            Text("\(student.firstname)  \(student.lastname)")
                        }
                        
                        
                    }
                    
                    Spacer()
                    
                    HStack{
                        Text("\(student.totalScore)")
                            .foregroundColor(student.totalScore < 50 ? Color.red : Color.black)
                        Text(" คะแนน")
                    }
                    
                }
                
            }
        }
    }
}
