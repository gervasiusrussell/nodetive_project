//
//  PersonalData.swift
//  nodetive_collab
//
//  Created by Shyra Alexandria on 7/15/23.
//


import SwiftUI


struct PersonalDataPage: View {
    private var genderArray = ["Male", "Female"]
    @State private var selectedIndex = 0
    
    var body: some View {
        VStack {
            Text("Personal Data")
                .font(.system(size: 26))
                .font(.title)
                .fontWeight(.light)
                .padding(.top)
            
            Spacer()
                .frame(height:0)
            
            Image("profileimejj")
                .resizable()
                .frame(width:80,height:80)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Divider()
                .background(Color.accentColor)
                .frame(width:350)
            
            Group{
                
                Text("Full Name")
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                Text("Gervasius Russel")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                Text("Occupation")
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                Text("Software Engineer")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                Text("Gender")
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
            }
            
            HStack{
                Text("Select Gender")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Picker(selection: $selectedIndex, label: Text("")) {
                    ForEach(genderArray.indices, id: \.self) { index in
                        Text(self.genderArray[index])
                        
                    }
                }
                
            }.padding(.horizontal)
                .padding(.bottom)
                .accentColor(.black)
            
            Group{
                
                Text("Email")
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom)
                    .padding(.leading)
                
                Text("russelger@gmail.com")
                    .accentColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                Text("Phone Number")
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                Text("+62 8193529512")
                    .foregroundColor(Color.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                HStack{
                    
                    Button(action: {
                    }) {
                        Text("Change Password")
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        Image(systemName: "arrow.right")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                }
            }
            Divider()
                .background(Color.accentColor)
                .frame(width:400)
                .padding(.bottom,10)
            
            Button(action: {
            }) {
                NavigationLink(destination: ProfileView()){
                    Text("Save Changes")}
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius:35)
                        .strokeBorder(Color.black)
                        .background(RoundedRectangle(cornerRadius:35)
                            .fill(Color("Pinky2")))
                )
            }.padding(.bottom, 30)
            
        }.padding()
    }
}

struct PersonalDataPage_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDataPage()
    }
}

