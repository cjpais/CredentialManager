//
//  ContentView.swift
//  Shared
//
//  Created by CJ Pais on 7/4/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ForEach (credentials, id: \.self) { credential in
                VStack {
                    CredentialView(credential: credential)
                    Text("from user defaults: \(UserDefaults().string(forKey: credential.name) ?? "lol")")
                }
            }
        }
    }
}

func getCredential(forCred name: String) -> String {
    var credVal = ""
    
    if let ud = UserDefaults(suiteName: "group.personal.cj.test") {
        credVal = ud.string(forKey: name) ?? "lol"
    }
    
    return credVal
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
