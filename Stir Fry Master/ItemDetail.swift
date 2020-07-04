//
//  ItemDetail.swift
//  Stir Fry Master
//
//  Created by Aaron Southammavong on 7/3/20.
//  Copyright © 2020 Aaron Southammavong. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    
    var item: MenuItem
    
    var body: some View {
        VStack {
            Image(item.mainImage)
            Text(item.description)
        }.navigationBarTitle(item.name)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(item:MenuItem.example)
    }
}
