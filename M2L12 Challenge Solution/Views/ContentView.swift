
import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = StudentModel()
    
    
    
    var body: some View {
        
        
        VStack{

            Picker("choosefliter", selection: $model.choosefliter) {
                
                Text("Student Id").tag(1)
                Text("Score").tag(2)
                
            }
            .padding(.vertical, 3)
            .padding(.horizontal,15)
            .pickerStyle(SegmentedPickerStyle())
            .shadow(radius: 1)
            
            
            
            if model.choosefliter == 1 {
                View1()
            }else{
                View2()
            }
            
            
            
            
            
        }.padding(.top,20)
        
        
        
        
    }
}
