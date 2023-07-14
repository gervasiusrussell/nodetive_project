//
//  ProfileView.swift
//  Nodetive
//
//  Created by Jennifer Marcellyn Cen on 14/07/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 70, height: 70)
                    VStack (alignment: .leading){
                        Text("Gervasius Russell")
                            .font(.system(size: 20, weight: .bold))
                        Text("Supreme Hustler")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
                Rectangle()
                    .frame(width: 500, height: 5)
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
                VStack {
                    HStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Spacer()
                            .frame(width: 30, height: 0)
                        Text("Personal Data")
                            .font(.system(size: 18, weight: .medium))
                        Spacer()
                            .frame(width: 118, height: 0)
                        NavigationLink{
                            IntroView()
                        } label:{
                            Image(systemName: "arrow.forward")
                                .resizable()
                                .frame(width: 30, height: 25)
                                .foregroundColor(.black)
                        }
                    }.padding(.bottom, 20)
                    Rectangle()
                        .frame(width: 343, height: 1)
                        .foregroundColor(.gray)
                        .padding(.bottom, 20)
                    HStack {
                        Image(systemName: "gear")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Spacer()
                            .frame(width: 30, height: 0)
                        Text("Settings")
                            .font(.system(size: 18, weight: .medium))
                        Spacer()
                            .frame(width: 164, height: 0)
                        NavigationLink{
                            IntroView()
                        } label:{
                            Image(systemName: "arrow.forward")
                                .resizable()
                                .frame(width: 30, height: 25)
                                .foregroundColor(.black)
                        }
                    }.padding(.bottom, 20)
                    Rectangle()
                        .frame(width: 343, height: 1)
                        .foregroundColor(.gray)
                        .padding(.bottom, 20)
                    Rectangle()
                        .frame(width: 500, height: 5)
                        .foregroundColor(.gray)
                        .padding(.bottom, 20)
                }
                HStack {
                    Image(systemName: "ticket")
                        .resizable()
                        .frame(width: 50, height: 35)
                    Spacer()
                        .frame(width: 30, height: 0)
                    Text("Referral Code")
                        .font(.system(size: 18, weight: .medium))
                    Spacer()
                        .frame(width: 118, height: 0)
                    NavigationLink{
                        IntroView()
                    } label:{
                        Image(systemName: "arrow.forward")
                            .resizable()
                            .frame(width: 30, height: 25)
                            .foregroundColor(.black)
                    }
                }.padding(.bottom, 20)
                Rectangle()
                    .frame(width: 343, height: 1)
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
                HStack {
                    Image(systemName: "crown")
                        .resizable()
                        .frame(width: 50, height: 40)
                    Spacer()
                        .frame(width: 30, height: 0)
                    Text("Subscription")
                        .font(.system(size: 18, weight: .medium))
                    Spacer()
                        .frame(width: 128, height: 0)
                    NavigationLink{
                        IntroView()
                    } label:{
                        Image(systemName: "arrow.forward")
                            .resizable()
                            .frame(width: 30, height: 25)
                            .foregroundColor(.black)
                    }
                }.padding(.bottom, 20)
                Rectangle()
                    .frame(width: 343, height: 1)
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
                HStack {
                    Image(systemName: "questionmark.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Spacer()
                        .frame(width: 30, height: 0)
                    Text("Help & Support")
                        .font(.system(size: 18, weight: .medium))
                    Spacer()
                        .frame(width: 106, height: 0)
                    NavigationLink{
                        IntroView()
                    } label:{
                        Image(systemName: "arrow.forward")
                            .resizable()
                            .frame(width: 30, height: 25)
                            .foregroundColor(.black)
                    }
                }.padding(.bottom, 20)
                Rectangle()
                    .frame(width: 343, height: 1)
            }
            .padding(.all,25)
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

