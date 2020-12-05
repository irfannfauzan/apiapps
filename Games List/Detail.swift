//
//  Detail.swift
//  Games List
//
//  Created by Irfan Fauzan R on 04/12/20.
//  Copyright © 2020 Irfan Fauzan R. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct Detail: View {
    var Game1 : Games
    var body: some View {
        VStack{
            WebImage(url: URL(string: Game1.background_image)!).resizable()
                .frame(width:400, height: 400)
                .aspectRatio(contentMode: .fit)
            VStack{
                Text(Game1.name).font(.headline).bold()
            HStack{
                Text("Released : \(Game1.released)").font(.subheadline)
                }
                HStack{
                Image(systemName: "star.fill")
                .imageScale(.small)
                .foregroundColor(.yellow)
                Text("Rating : \(Game1.rating)").font(.subheadline)
                    .navigationBarTitle("Details")
        }
            }
        }
    }
}
