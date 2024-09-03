//
//  Image.swift
//  shops24
//
//  Created by Diederick de Buck on 01/12/2022.
//

import SwiftUI


@available(iOS 13.0, *)
public extension Image {
    @available(iOS 13.0.0, *)
    func portrait(width: CGFloat, height: CGFloat) -> some View {
        self
            .resizable()
            .scaledToFit()
            .aspectRatio(1.0, contentMode: .fit)
            .frame(width: width, height: height)
    }
}
