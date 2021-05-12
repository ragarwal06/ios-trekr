//
//  TipsView.swift
//  Trekr
//
//  Created by Rahul Agarwal on 12/05/21.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tips]
    
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tips].self, from: data)
    }
    
    var body: some View {
        List(tips, id: \.text, children: \.children) { tip in
            if(tip.children != nil) {
                Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            } else {
                Text(tip.text)
            }
        }
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
