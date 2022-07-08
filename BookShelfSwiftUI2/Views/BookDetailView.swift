//
//  BookDetailView.swift
//  BookShelfSwiftUI2
//
//  Created by Regina Paek on 7/7/22.
//

import SwiftUI

struct BookDetailView: View {
   
   @Binding var book: Book
    
    var body: some View {
        
        VStack {
            VStack{
                Image(book.coverArt)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:75)
                
                Text(book.title)
                    .font(.title)
                    .fontWeight(.bold)
                Text(book.author)
                    .font(.system(size: 12, weight: .light, design: .serif))
                        .italic()
                HStack{
                    VStack{
                    Text("Release")
                        Text(book.releaseYear)
                            .font(.system(size: 12, weight: .light, design: .serif))
                    }
                    VStack{
                    Text("Pages")
                        Text(book.pages)
                            .font(.system(size: 12, weight: .light, design: .serif))
                    }
                    VStack{
                    Text("Language")
                        Text(book.language)
                            .font(.system(size: 12, weight: .light, design: .serif))
                    }
                } //end of HStack
            }
            VStack(alignment: .leading){
                Text("Description")
                    .font(.system(size: 15, weight: .bold))
                    .padding(.top)
            ScrollView{
            Text(book.description)
            }
            }
        }
       
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: .constant(Book(title: "whatever", author: "who cares", coverArt: "10x", releaseYear: "2000",pages: "999", language: "eng", description: "blahblahblahblahblahblahblahblahblahblahblahblahblahblahlbakaoefijaw")))
    }
}
