//
//  TileModifer.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/9/20.
//

import Foundation


import SwiftUI


        extension View {
            func asTile() -> some View {
                modifier(TileModifer())
            }
        }

        struct TileModifer: ViewModifier {
            
            func body(content: Content) -> some View {
                content
                    .background(Color(.white))
                    .cornerRadius(5)
                    .shadow(color: .init(.sRGB, white: 0.8, opacity: 1 ),
                            radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)
            }
        }
