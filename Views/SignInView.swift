//
//  SignInView.swift
//  nodetive_collab
//
//  Created by Shyra Alexandria on 7/17/23.
//

import SwiftUI

struct PasswordSecureeField: View {
    @Binding var password: String
    @State private var isSecure = true
    
    var body: some View {
        HStack {
            if isSecure {
                SecureField("Password", text: $password)
            } else {
                TextField("Password", text: $password)
            }
            Button(action: {
                isSecure.toggle()
            }) {
                Image(systemName: isSecure ? "eye.slash.fill" : "eye.fill")
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
    }
}


struct SignInView: View {
    @State var email: String = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Sign In")
                    .font(.system(size: 45))
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                Text("Email")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                TextField("Email",
                          text: $email,
                          prompt: Text("Email").foregroundColor(.gray))
                .padding(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray)
                }
                .padding(.horizontal)
                .padding(.bottom)
                
                Text("Password")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                PasswordSecureeField(password: $password)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray)
                            .frame(width:360,height: 44)
                            .offset(y:-1)
                    }
                    .padding(.bottom)
                
                
                
                Button(action: {
                }) {
                    NavigationLink(destination: ContentView2()){
                        Text("Sign In")}
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius:35)
                            .strokeBorder(Color.black)
                            .frame(width: 130)
                            .background(RoundedRectangle(cornerRadius:35)
                                .fill(Color("Pinky3"))))
                }
                
                HStack{
                    Text("Create new account?")
                    
                    Button(action: {
                    }) { NavigationLink(destination: SignUpView()){
                        Text("Sign Up")}
                    .fontWeight(.medium)
                    .foregroundColor(Color("Pinky4"))
                        
                    }
                    
                }
                Spacer()
                    .frame(height: 50)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}


struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

