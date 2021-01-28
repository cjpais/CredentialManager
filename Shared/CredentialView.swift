//
//  CredentialView.swift
//  CredentialManager
//
//  Created by CJ Pais on 7/4/20.
//

import SwiftUI

struct CredentialView: View {
    
    
    var credential: Credential

    var body: some View {
        
        HStack {
            Image(systemName: "key.fill")
            Text(credential.name)
                .bold()
            Spacer()
            Text(credential.value)
        }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
    }
}

struct CredentialView_Previews: PreviewProvider {
    static var previews: some View {
        CredentialView(credential: credentials[0])
    }
}
