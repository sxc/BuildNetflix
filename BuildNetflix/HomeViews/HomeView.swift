//
//  HomeView.swift
//  BuildNetflix
//
//  Created by Xiaochun Shen on 2020/10/6.
//

import SwiftUI

struct HomeView: View {
    var vm: HomeVM = HomeVM()
    
    let screen = UIScreen.main.bounds
    
    @State private var movieDetailToShow: Movie? = nil
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            // main vstack
            ScrollView(showsIndicators: false){
                LazyVStack {
                    
//                    ZStack(alignment: .top) {
                        
                    TopRowButtons()
                    
                        TopMoviePreview(movie: exampleMovie5)
                            .frame(width: screen.width)
                            .padding(.top, -110)
                            .zIndex(-1)
                        
                       
//                    }
                    
                    ForEach(vm.allCategories, id:\.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(vm.getMovie(forCat: category)) { movie in
                                    StandHomeMovie(movie: movie)
                                        .frame(width: 100, height: 200)
                                        .padding(.horizontal, 20)
                                        .onTapGesture(perform: {
                                            movieDetailToShow = movie
                                        })
                                    
                                }
                            }
                        }
                    }
                           
                    }
                }
            }
            
            if movieDetailToShow != nil {
            
                MovieDetail(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeIn)
                    .transition(.opacity)
            
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
    var body: some View {
        HStack {
            
            Button(action: {
                //
            }, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            Button(action: {
                //
            }, label: {
                Text("TV Shows")
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                //
            }, label: {
                Text("Movies")
            })
            .buttonStyle(PlainButtonStyle())
            Spacer()
            
            Button(action: {
                //
            }, label: {
                Text("My Lists")
            })
            .buttonStyle(PlainButtonStyle())
        }
//        .background(Color.black)
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
