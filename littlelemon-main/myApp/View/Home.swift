
import SwiftUI

struct Home: View {
    let persistence = PersistenceController.shared
    
    var body: some View {
        TabView{
            Menu()
                .environment(\.managedObjectContext, persistence.container.viewContext)
                .tabItem {
                    Label("Menu", systemImage: "fork.knife.circle")
                }
            UserProfile()
                .navigationTitle("Personal Information")
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
               
        }
        .navigationBarBackButtonHidden(true)
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
