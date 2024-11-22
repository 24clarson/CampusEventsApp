import SwiftUI

struct ContentView: View {
//    let events: [String]
//    let events: [[String: String]] = [
//        ["title": "A", "time": "B"],
//        ["title": "C", "time": "D"],
//    ]
//    let details: [[String: String]] = [
//        ["title": "Title", "desc": "Description"],
//        ["title": "Title", "desc": "Description"],
//    ]
    let events: [[String]] = [
        ["A", "B"],
        ["C", "D"],
        ["E", "F"],
        ["G", "H"],
        ]
    let details: [[String]] = [
        ["Title", "Description"],
        ["Title2", "Description2"],
        ["Title3", "Description3"],
        ["Title4", "Description4"],
    ]
    
    var body: some View {
        NavigationView {

            VStack {
                
                Text("Upcoming Events").font(.custom("Times New Roman", size:40))
                
                ForEach(events.indices, id: \.self) { i in
                    ZStack {
                        
                        Rectangle().fill(.red).frame(width: 300, height: 80).cornerRadius(10)
                        
                        HStack {
                            
                            Text(events[i][0])
                            
                                .font(.custom("Avenir", size:20))
                            
                                .foregroundColor(.white)
                            
                                .frame(width: 200, alignment: .leading)
                            
                                .lineLimit(nil)
                            
                            Spacer()
                            
                            VStack {
                                
                                Text(events[i][1])
                                
                                    .font(.custom("Avenir", size:16))
                                
                                    .foregroundColor(.white)
                                
                                NavigationLink(destination: InfoView(details: details[i])) {
                                    Text("View info")
                                    
                                        .font(.custom("Avenir", size:16))
                                    
                                        .foregroundColor(.white)
                                    
                                        .underline()
                                }
                                
                            }
                            
                            .frame(width: 80, alignment: .leading)
                            
                        }
                        
                        .padding(.leading, 20)
                        
                        .frame(width: 300, height: 60)
                        
                    }
                }
                
                Spacer()
                
            }
            
        }
    }

}



struct ContentView_Previews: PreviewProvider {

    static var previews: some View {

        ContentView()

    }

}
