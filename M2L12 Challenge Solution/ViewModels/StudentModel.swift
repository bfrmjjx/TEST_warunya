import Foundation

// Students
class StudentModel: ObservableObject {
    
    @Published var Students = [Student]()

    init() {
        
        let pathString = Bundle.main.path(forResource: "data_1", ofType: "json")
        
        if pathString != nil {
            
            let url = URL(fileURLWithPath: pathString!)
            
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    let dt = try decoder.decode([Student].self, from: data)
                    
        
                    for index in 0..<dt.count {
                        dt[index].id = UUID()
                    }
                    
                    self.Students = dt
                }
                catch {
                    print("Couldn't parse")
                }
                
            }
            catch {
                print("Couldn't create Data object")
            }
            
        }
    }
    
}
