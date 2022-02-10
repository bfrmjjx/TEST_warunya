
import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = StudentModel()
    
    @State var a:Int = 1
    
    var sex:String = "Mr"
    
    var body: some View {
        
        
        VStack{
            
            Picker("choosefliter", selection: $a ) {
                
                
                if a == 1 {
                    Text("Student Id")
                    
                    //view1()
                }else{
                    Text("Score")
                    // view2()
                }
                
                
                
            }
            .padding(.vertical, 3)
            .padding(.horizontal,15)
            .pickerStyle(SegmentedPickerStyle())
            .shadow(radius: 1)
            
            
            
            if a == 1 {
                view1()
            }else{
                view2()
            }
            
            
            
            Spacer()
            
            
        }
        
        
        
        
    }
}
