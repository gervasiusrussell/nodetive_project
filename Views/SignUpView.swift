//
//  SignUpView.swift
//  nodetive_collab
//
//  Created by Shyra Alexandria on 7/17/23.
//

import SwiftUI

struct PasswordSecureField: View {
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

struct ReenterPasswordSecureField: View {
    @Binding var password: String
    @State private var isSecure = true
    
    var body: some View {
        HStack {
            if isSecure {
                SecureField("Re-enter Password", text: $password)
            } else {
                TextField("Re-enter Password", text: $password)
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

struct SignUpView: View {
    @State var username: String = ""
    @State private var isSelected = false
    @State private var isSelected2 = false
    @State private var birthDate = Date.now
    @State var phonenumber: String = ""
    @State var email: String = ""
    
    @State private var password = ""
    @State private var reenteredPassword = ""
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack {
                Group{
                    Text("Sign Up")
                        .font(.system(size: 35))
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    
                    Spacer()
                    
                    Text("Username")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    
                    TextField("Username",
                              text: $username,
                              prompt: Text("Username").foregroundColor(.gray))
                    .padding(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray)
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                    
                    Text("Gender")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    
                    HStack {
                        Spacer()
                            .frame(width: 60,height: 0)
                        ButtonView2(isSelected: $isSelected, color: Color("bluey"), text: "Male")
                            .onTapGesture {
                                isSelected.toggle()
                                
                                if isSelected {
                                    isSelected2 = false
                                }
                            }
                            .padding(.bottom)
                        Spacer()
                            .frame(width: 80, height: 0)
                        
                        ButtonView2(isSelected: $isSelected2, color: Color("pinkies"), text: "Female")
                            .onTapGesture {
                                isSelected2.toggle()
                                
                                if isSelected2 {
                                    isSelected = false
                                }
                            }
                            .padding(.bottom)
                        Spacer()
                            .frame(width: 50, height: 0)
                        
                    }
                    HStack{
                        Text("Date of Birth")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                        
                        DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date) {
                            Text("")
                        }
                        .accentColor(Color("AccentColor"))
                        .padding(.horizontal)
                    }
                    .padding(.bottom)
                    
                    Text("Phone Number")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    
                    TextField("Phone Number",
                              text: $phonenumber,
                              prompt: Text("Phone Number").foregroundColor(.gray))
                    .padding(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray)
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                    
                    Text("Email")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                }
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
                
                PasswordSecureField(password: $password)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray)
                            .frame(width:325,height: 40)
                            .offset(y:-1)
                    }
                
                Text("Re-enter Password")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                
                ReenterPasswordSecureField(password: $reenteredPassword)
                    .padding(.horizontal)
                    .padding(.bottom)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray)
                            .frame(width:325,height: 40)
                            .offset(y:-7)
                    }
                Spacer()
                    .frame(height: 25)
                
                Button(action: {
                }) {
                    NavigationLink(destination: HomeView()){
                        Text("Sign Up")}
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
                    Text("Already have account?")
                    
                    Button(action: {
                    }) {
                        NavigationLink(destination: SignInView()){
                            Text("Sign In")}
                            .fontWeight(.medium)
                            .foregroundColor(Color("Pinky4"))
                        
                    }
                    
                }
            }
            .padding()
        }
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

