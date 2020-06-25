//
//  Color.swift
//  SegmentedControlUpdates
//
//  Created by Prathamesh Kowarkar on 25/06/20.
//

import UIKit

enum Color: String, CaseIterable {

    case red = "Red"
    case green = "Green"
    case blue = "Blue"

    var uiColor: UIColor {
        switch self {
            case .red: return .systemRed
            case .green: return .systemGreen
            case .blue: return .systemBlue
        }
    }

}
