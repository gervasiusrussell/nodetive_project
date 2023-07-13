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
                            
                            Text("--------------- Or ---------------")
                            
                            Spacer()
                                .frame(width: 0, height: 30)
                            
                            Button(action: {
                                goToZero()
                            }) {
                                Text("Sign Up")
                                }
                                .frame(width: 100, height: 40)
                                .background(Color(red: 1.0, green: 0.87, blue: 0.87))
                                .foregroundColor(.black)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 2))
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
