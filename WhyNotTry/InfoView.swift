import SwiftUI

struct InfoView: View {
    let details: [String]

    var body: some View {

        VStack {
            
            Text(details[0]).font(.custom("Times New Roman", size:40))
            
            Text(details[1]).font(.custom("Avenir", size:16))
            
            Spacer()

        }

    }

}
