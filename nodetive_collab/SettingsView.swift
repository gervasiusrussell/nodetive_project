//
//  SettingsView.swift
//  nodetive_collab
//
//  Created by Samuel Matthew Masman on 18/07/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var isDottedSelected = true
    @State private var isDottedSelected2 = false
    @State private var isDottedSelected3 = false
    @State private var is2DottedSelected = true
    @State private var is2DottedSelected2 = false
    @State private var is2DottedSelected3 = false
    @State private var showAlert = false
    @State private var alertText = ""
    var body: some View {
        ScrollView(.vertical,showsIndicators: false, content:{
            
            VStack {
                Group{
                    HStack {
//                        Button(action: {
//
//                        }) {
//                            Image(systemName: "arrowshape.backward")
//                                .resizable()
//                                .frame(width: 30, height: 30)
//                                .foregroundColor(.black)
//                        }
                        
                        Spacer()
//                            .frame(width: 120)
                        
                        Text("Settings")
                            .fontWeight(.regular)
                        
                        Spacer()
                    }
                    
                    Spacer()
                        .frame(height:30)
                    
                    HStack{
                        Text("Language")
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    HStack{
                        Rectangle()
                            .frame(height:1)
                            .foregroundColor(.gray)
                    }
                }
                
                Group{
                    Spacer()
                        .frame(height: 15)
                    
                    HStack{
                        Text("English (US)")
                        Spacer()
                        VStack {
                            DottedSelectButton(
                                isDottedSelected: $isDottedSelected, color: Color("SelectedColor"), text:"1")
                            
                            .onTapGesture {
                                isDottedSelected.toggle()
                                
                                if isDottedSelected {
                                    isDottedSelected2 = false
                                    isDottedSelected3 = false
                                }
                                
                            }
                        }
                            .frame(width: 70)
                    }
                    
                    Spacer()
                        .frame(height:20)
                    
                    HStack{
                        Text("English (UK)")
                        Spacer()
                        VStack{
                            DottedSelectButton(
                                isDottedSelected: $isDottedSelected2, color: Color("SelectedColor"), text:"2")
                            .onTapGesture {
                                isDottedSelected2.toggle()
                                
                                if isDottedSelected2 {
                                    isDottedSelected = false
                                    isDottedSelected3 = false
                                }
                            }
                        }
                        .frame(width: 70)
                    }
                    
                    Spacer()
                        .frame(height:20)
                    
                    HStack{
                        Text("Indonesian")
                        Spacer()
                        VStack{
                            DottedSelectButton(isDottedSelected: $isDottedSelected3, color: Color("SelectedColor"), text:"3")
                                .onTapGesture {
                                    isDottedSelected3.toggle()
                                    
                                    if isDottedSelected3 {
                                        isDottedSelected = false
                                        isDottedSelected2 = false
                                    }
                                }
                        }
                        .frame(width: 70)
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    HStack{
                        Text("Notifications")
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    HStack{
                        Rectangle()
                            .frame(height:1)
                            .foregroundColor(.gray)
                    }
                }
                
                Group{
                    Spacer()
                        .frame(height: 15)
                    
                    HStack{
                        Image(systemName: "speaker.wave.3.fill")
                            .resizable()
                            .frame(width:30,height:25)
                        
                        Spacer()
                            .frame(width:20)
                        
                        Text("Sound")
                            .fontWeight(.regular)
                        VStack {
                            Dotted2SelectButton(
                                is2DottedSelected: $is2DottedSelected, color: Color("SelectedColor"), text:"1")
                            
                            .onTapGesture {
                                is2DottedSelected.toggle()
                                
                                if is2DottedSelected {
                                    is2DottedSelected2 = false
                                    is2DottedSelected3 = false
                                }
                                
                            }
                        }
                        .padding(.leading,405)
                        .frame(width: 30)
                        Spacer()
                    }
                    
                    HStack{
                        Image("vibrate")
                            .resizable()
                            .frame(width:35,height:35)
                        
                        Spacer()
                            .frame(width:15)
                        
                        Text("Vibrate")
                            .fontWeight(.regular)
                        VStack{
                            Dotted2SelectButton(
                                is2DottedSelected: $is2DottedSelected2, color: Color("SelectedColor"), text:"2")
                            .onTapGesture {
                                is2DottedSelected2.toggle()
                                
                                if is2DottedSelected2 {
                                    is2DottedSelected = false
                                    is2DottedSelected3 = false
                                }
                            }
                        }
                        .padding(.leading,392)
                        .frame(width: 30)
                        Spacer()
                    }
                    
                    HStack{
                        Image(systemName: "speaker.slash.fill")
                            .resizable()
                            .frame(width:30,height:25)
                        
                        Spacer()
                            .frame(width:22)
                        
                        Text("Mute")
                            .fontWeight(.regular)
                        VStack{
                            Dotted2SelectButton(is2DottedSelected: $is2DottedSelected3, color: Color("SelectedColor"), text:"3")
                                .onTapGesture {
                                    is2DottedSelected3.toggle()
                                    
                                    if is2DottedSelected3 {
                                        is2DottedSelected = false
                                        is2DottedSelected2 = false
                                    }
                                }
                        }
                        .padding(.leading,420)
                        .frame(width: 30)
                        Spacer()
                    }
                }
                
                Group{
                    Spacer()
                        .frame(height:15)
                    HStack{
                        Image(systemName: "ellipsis.message.fill")
                            .resizable()
                            .frame(width:30,height:25)
                        
                        Spacer()
                            .frame(width:22)
                        
                        Text("Message Notification")
                            .fontWeight(.regular)
                        Spacer()
                        
                        Spacer()
                            .frame(width:90)
                        
                        Button(action: {
                        }) {
                            Image(systemName: "chevron.right")
                                .resizable()
                                .frame(width: 12, height: 18)
                                .foregroundColor(.black)
                            Spacer()
                                .frame(width:30)
                        }
                    }
                }
                
                Group{
                    Spacer()
                        .frame(height: 30)
                    
                    HStack{
                        Text("Connected Devices")
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    HStack{
                        Rectangle()
                            .frame(height:1)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                        .frame(height:15)
                    
                    HStack{
                        Spacer()
                            .frame(width:5)
                        Image(systemName: "iphone.gen3")
                            .resizable()
                            .frame(width:25, height:40)
                        
                        Spacer()
                            .frame(width:18)
                        
                        Text("Iphone 11")
                            .fontWeight(.regular)
                        Spacer()
                    }
                    
                    HStack{
                        Image(systemName: "laptopcomputer")
                            .resizable()
                            .frame(width:35, height:25)
                        
                        Spacer()
                            .frame(width:12)
                        
                        Text("Macbook Pro")
                            .fontWeight(.regular)
                        Spacer()
                        
                    }
                    
                    Spacer()
                        .frame(height:30)
                    HStack{
                        Text("About Us")
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    HStack{
                        Rectangle()
                            .frame(height:1)
                            .foregroundColor(.gray)
                    }
                    
                    HStack{
                        Image("logo")
                            .resizable()
                            .frame(width:150, height:150)
                        
                        HStack{
                            VStack{
                                Text("Nodetive is an app that balances students’ busy schedule by visualizing daily productivity level.")
                            }
                            Spacer()
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
        })
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
