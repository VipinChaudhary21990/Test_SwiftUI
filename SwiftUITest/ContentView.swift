//
//  ContentView.swift
//  SwiftUITest
//
//  Created by vipin on 2/18/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var Username:String = "Vipin chaudhary"
    @State var Password:String = ""
    @State var showingAlert = false
   // @Environment(\.managedObjectContext) private var viewContext
    // private var items: FetchedResults<Item>

    var body: some View {
        Label(
            title: { Text("Game App")
                .foregroundColor(.red)
            },
            icon: { /*@START_MENU_TOKEN@*/Image(systemName: "42.circle")/*@END_MENU_TOKEN@*/ }
     )
        .font(.system(size: 56.0))
       // .padding(.top,12)
        VStack(alignment: .center, spacing: 10, content: {
        Label("Login Screen", systemImage:"")
            .labelStyle(TitleOnlyLabelStyle())
        TextField("Enter the Username", text: $Username)
           // .frame(width: 200, height: 200, alignment: .center)
        TextField("Enter the Password", text: $Password)
           // .frame(width: 200, height: 200, alignment: .center)
        })
        Button(action: {
            Username = ""
            Password = ""
                   self.showingAlert = true
               }) {
                   Text(" Login ")
               }
               .alert(isPresented: $showingAlert) {
                   Alert(title: Text("Alert"), message: Text("Login:\(Username):Pass:\(Password)"), dismissButton: .default(Text("Got it!")))
               }

    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
