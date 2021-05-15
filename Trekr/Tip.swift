//
//  Tip.swift
//  Trekr
//
//  Created by Mohammad Faizan on 2021-05-15.
//

import Foundation

struct Tip: Decodable {
    let text:String
    let children: [Tip]?
}
