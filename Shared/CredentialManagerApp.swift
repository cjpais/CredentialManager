//
//  CredentialManagerApp.swift
//  Shared
//
//  Created by CJ Pais on 7/4/20.
//

import SwiftUI

@main
struct CredentialManagerApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    setCreds()
                }
        }
    }
    
    func setCreds() {
        for credential in credentials {
            if let ud = UserDefaults(suiteName: "group.personal.cj.test") {
                print("creds set for ", credential)
                ud.set(credential.value, forKey: credential.name)
            } else {
                print("Couldn't get user defaults for CJ")
            }
        }
    }
}

struct CredentialManagerApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
