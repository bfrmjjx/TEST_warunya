import SwiftUI

struct CardView: View {
    
    var student:Student
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            
            HStack {
                
                
                VStack(alignment: .leading){
                    
                    Text("รหัสนักเรียน \(student.studentId)")
                    
                    
                    HStack{
                        Text("ชื่อ-นามสกุล ")
                        Text(student.gender == "male" ? "Mr." : "Ms."  )
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
