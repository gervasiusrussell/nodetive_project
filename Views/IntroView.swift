//
//  IntroView.swift
//  Nodetive
//
//  Created by Jennifer Marcellyn Cen on 10/07/23.
//

import SwiftUI

struct IntroView: View {
    @State private var pageIndex = 0
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIPageControl.appearance()
    
    var body: some View {
        NavigationView {
            TabView(selection: $pageIndex) {
                ForEach(pages) { page in
                    VStack {
                        Spacer()
                        PageView(page: page)
                        Spacer()
                        if page == pages.last {
                            VStack{
                                HStack {
                                    Button(action: {
                                        goToZero()
                                    }) {
                                        Image("applelogo")
                                            .resizable()
                                            .frame(width: 20, height: 20)
                                        Spacer()
                                            .frame(width: 30, height: 10)
                                        Text("Sign Up with Apple ID")
                                        Spacer()
                                            .frame(width: 10, height: 0)
                                    }
                                    .frame(width: 300, height: 40)
                                    .background(Color.clear)
                                    .foregroundColor(.black)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.gray, lineWidth: 1))
                                }
                                Spacer()
                                    .frame(width: 0, height: 15)
                                Button(action: {
                                    goToZero()
                                }) {
                                    HStack {
                                        Image("googlelogo")
                                            .resizable()
                                            .frame(width: 20, height: 20)
                                        Spacer()
                                            .frame(width: 30, height: 10)
                                        Text("Sign Up with Google")
                                        Spacer()
                                            .frame(width: 10, height: 0)
                                    }
                                    .frame(width: 300, height: 40)
                                    .background(Color.clear)
                                    .foregroundColor(.black)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.gray, lineWidth: 1))
                                }
                                Spacer()
                                    .frame(width: 0, height: 15)
                                Button(action: {
                                    goToZero()
                                }) {
                                    HStack {
                                        Image("facebooklogo")
                                            .resizable()
                                            .frame(width: 20, height: 20)
                                        Spacer()
                                            .frame(width: 30, height: 10)
                                        Text("Sign Up with Facebook")
                                        Spacer()
                                            .frame(width: 10, height: 0)
                                    }
                                    .frame(width: 300, height: 40)
                                    .background(Color.clear)
                                    .foregroundColor(.black)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.gray, lineWidth: 1))
                                }
                                Spacer()
                                    .frame(width: 0, height: 30)
                                
                                HStack {
                                    Rectangle()
                                        .frame(width: 130, height: 1)
                                    Text("Or")
                                    Rectangle()
                                        .frame(width: 130, height: 1)
                                }
                                
                                Spacer()
                                    .frame(width: 0, height: 30)
                                
                                Button(action: {
                                }) {
                                    NavigationLink(destination: SignUpView()){
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
                            }
                            Spacer()
                                .frame(width: 0, height: 30)
                            
                        }
                        Spacer()
                    }
                    .tag(page.tag)
                }
            }
            .animation(.easeInOut, value: pageIndex)
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .onAppear {
                dotAppearance.currentPageIndicatorTintColor = .black
                dotAppearance.pageIndicatorTintColor = .gray
            }
        }
    }
    func incrementPage() {
        pageIndex += 1
    }
    func goToZero() {
        pageIndex = 0
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
