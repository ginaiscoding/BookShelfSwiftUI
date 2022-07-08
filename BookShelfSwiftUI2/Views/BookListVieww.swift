//
//  BookListVieww.swift
//  BookShelfSwiftUI2
//
//  Created by Regina Paek on 7/8/22.
//


import SwiftUI

struct BookListView: View {
    
    @StateObject var bookViewModel = BookViewModel()
    
    var body: some View {
        
        
        NavigationView{
          
            List{
                ForEach(bookViewModel.books) { book in
                    NavigationLink {
                        BookDetailView(book: .constant(book))
                      
                    } label: {
                        HStack {
                            Image(book.coverArt)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50)
                                
                            VStack(alignment: .leading) {
                                Text(book.title)
                                    .font(.headline)
                                Text(book.author)
                                    .font(.subheadline)
                                Text("Testing git")
                                HStack{
                                   ProgressBar()
                                    Text("50%")
                                        .font(.subheadline)
                                }
                                HStack{
                                    Image(systemName: "heart")
                                    Text("likes")
                                        .font(.caption)
                                    Image(systemName: "message")
                                    Text("comments")
                                        .font(.caption)
                                }
                            }
                        }
                    }
                }
                .onDelete(perform: bookViewModel.deleteBook(at:))
                }
            
            
            .navigationTitle("Book Shelf")
            .listStyle(.plain)
            
    }
        
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}

///ZStack View that represents the users reading progress
struct ProgressBar: View {
    
    var body: some View {
        ZStack(alignment: .leading) {
            Capsule().frame(width: 100, height: 5)
                .opacity(0.3)
                .foregroundColor(.gray)
            Capsule().frame(width: 50, height: 5)
                .foregroundColor(.orange)
        }
    }
}
