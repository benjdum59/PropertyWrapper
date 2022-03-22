//
//  ViewModel.swift
//  PropertyWrapper
//
//  Created by Benjamin DUMONT on 22/03/2022.
//

import Foundation

class ViewModel {
    @MainThread var updateUI: ((_ newString: String?) -> Void)?
    private var integer: Int = 0
    
    func updateData() {
        DispatchQueue(label: "background").asyncAfter(deadline: .now() + 0.5) { [weak self] in
            guard let self = self else {
                return
            }
            self.integer = self.integer + 1
            self.updateUI?("Hello World \(self.integer)")
        }
    }
}
