
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HStack {
                Image(systemName: "moon.circle")
                    .font(.title)
                Text("Dark Mode")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color("textColor"))
            }
            .navigationBarTitle("User Defaults")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
