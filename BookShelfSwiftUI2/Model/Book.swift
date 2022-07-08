//
//  Book.swift
//  BookShelfSwiftUI2
//
//  Created by Regina Paek on 7/7/22.
//

import Foundation

struct Book: Identifiable, Equatable {

  var id: String = UUID().uuidString
  var title: String
  var author: String
  var coverArt: String
  var releaseYear: String
  var pages: String
  var language: String
  var description: String
}
