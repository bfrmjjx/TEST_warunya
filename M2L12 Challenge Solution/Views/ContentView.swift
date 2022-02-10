
import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = StudentModel()
    

    
    var body: some View {
        
        
        VStack{
            
            Picker("choosefliter", selection: $model.a ) {

                    Text("Student Id").tag(1)
                    Text("Score").tag(2)

            }
            .padding(.vertical, 3)
            .padding(.horizontal,15)
            .pickerStyle(SegmentedPickerStyle())
            .shadow(radius: 1)
            
            
            
            if model.a == 1 {
                view1()
            }else{
                view2()
            }
            
            
            
            Spacer()
            
            
        }
        
        
        
        
    }
}
