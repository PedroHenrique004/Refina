//
//  ArticleModel.swift
//  Refina
//
//  Created by Pedro Santos on 27/06/25.
//

import Foundation


public struct ArticleModel: Codable {
    
    public var title: String
    public var url: String
    public var owner: UserModel
    public var description: String
    public var category: String
    
}
