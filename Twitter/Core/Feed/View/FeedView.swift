//
//  FeedView.swift
//  Twitter
//
//  Created by Stuart Ray on 5/19/22.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    @ObservedObject var viewModel = FeedViewModel()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView{
                LazyVStack{
                    ForEach(viewModel.tweets){ tweet in
                        TweetsRowView(tweet: tweet)
                            .padding()
                    }
                }
            }
            Button {
                showNewTweetView.toggle()
            } label: {
                Image(systemName: "rectangle.and.pencil.and.ellipsis")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView) {
                NewTweetView()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
