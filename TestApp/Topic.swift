//
//  Topic.swift
//  TestApp
//
//  Created by Maik Langer on 18.11.24.
//

import Foundation

struct Topic: Decodable, Hashable {
    
    let title: String
    let explanation: String
    let codeSnippet: String
}
