//
//  HomeView.swift
//  BlossomMovie-IOS
//
//  Created by Locus Wong on 2026-02-10.
//

import SwiftUI

struct HomeView: View {
    var heroTestTitle = Constants.testTitleURL
    
    var body: some View {
        ScrollView {
            LazyVStack{
                AsyncImage(url: URL(string: heroTestTitle)){ image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
            }
            
            HStack{
                Button{
                    
                } label: {
                    Text(Constants.playString)
                        .ghostButton()
                }
                
                Button{
                    
                } label: {
                    Text(Constants.downloadString)
                        .ghostButton()
                }
                
            }
            
            HorizontalListView(header: Constants.trendingMovieString)
            HorizontalListView(header: Constants.trendingTVString)
            HorizontalListView(header: Constants.topRatedMovieString)
            HorizontalListView(header: Constants.topRatedTVString)
        }
        
       
        
    }
}

#Preview {
    HomeView()
}
