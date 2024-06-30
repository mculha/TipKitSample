//
//  ReusableTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 29.06.2024.
//
import Foundation
import TipKit


struct ReusableTip: Tip {
    
    let model: ReusableTipModel
    
    var title: Text {
        Text(model.title)
    }
    
    var message: Text? {
        Text(model.message)
    }
    
    var image: Image? {
        Image(systemName: model.image)
    }
    
    //TODO - To create reusable tips we have to add a custom identifier so that swiftUI can distinguish Tips
    var id: String {
        return model.id
    }
}

struct ReusableTipModel {
    let title: String
    let message: String
    let image: String
    let bgImage: String
    let id: String
}
