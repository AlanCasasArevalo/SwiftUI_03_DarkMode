
import SwiftUI

struct ContentView: View {
    
    @State private var mode: ColorScheme = .light
    @State private var change: Bool = true

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(systemName: "moon.circle")
                        .font(.title)
                    Text("Dark Mode")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color("textColor"))
                }
                Image("logo")
                
                Button(action: {
                    self.change.toggle()
                    self.changeMode()
                }) {
                    Text("Cambiar modo")
                }
                
            }
            .navigationBarTitle("User Defaults")

        }
        .environment(\.colorScheme, self.mode)
    }
}

extension ContentView {
    func changeMode () {
        if self.change {
            self.mode = .light
        } else {
            self.mode = .dark
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
