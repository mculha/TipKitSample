//
//  CustomTipStyle.swift
//  TipKitSample
//
//  Created by Melih Çulha on 30.06.2024.
//

import TipKit

struct ReusableCustomTipStyle: TipViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        let tip = configuration.tip as! ReusableTip
        
        Image(tip.model.bgImage)
            .frame(maxHeight: 150)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1).foregroundColor(.white))
            .padding(.horizontal)
            .overlay {
                VStack {
                    Spacer()
                    
                    configuration.title?.font(.title)
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundStyle(.white)
                    
                    configuration.message?.font(.subheadline)
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundStyle(.white)
                }
                .padding(.bottom, 10)
            }
            
    }
}
