
import SwiftUI

struct ContentView: View {
    
    @State private var mode: ColorScheme = .light
    @State private var change: Bool!

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
                    UserDefaults.standard.set(self.change, forKey: "colorSchemaMode")
                    self.darkMode()
                }) {
                    Text("Cambiar modo")
                }
                
            }
            .navigationBarTitle("User Defaults")
        .onAppear(perform: darkMode)

        }
        .environment(\.colorScheme, self.mode)
    }
}

extension ContentView {
    func darkMode () {
        if (UserDefaults.standard.object(forKey: "colorSchemaMode") != nil) {
            let lightMode = UserDefaults.standard.bool(forKey: "colorSchemaMode")
            
            if lightMode {
                self.mode = .light
                self.change = true
            } else {
                self.mode = .dark
                self.change = false
            }
        } else {
            self.change = true
            self.mode = .light
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
