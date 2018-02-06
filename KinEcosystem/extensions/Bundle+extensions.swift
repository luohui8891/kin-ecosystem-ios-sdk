//
//
//  Bundle+extensions.swift
//
//  Created by Kin Foundation
//  Copyright © 2018 Kin Foundation. All rights reserved.
//
//  kinecosystem.org
//

import Foundation

extension Bundle {
    class var ecosystem: Bundle {
        let bundle = Bundle(for: Ecosystem.self)
        if  let bundlePath = bundle.path(forResource: "KinEcosystem", ofType: "bundle"),
            let bundle = Bundle(path: bundlePath) {
            return bundle
        }
        return bundle
    }
}
