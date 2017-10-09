//
//  TipModel.swift
//  TipsyCalcApp
//
//  Created by Sheilar June on 10/9/17.
//  Copyright © 2017 Sheilar June. All rights reserved.
//

import Foundation
class TipModel{
    private var _billAmount:Double = 0
    private var _tipPercent:Double = 0
    private var _tipAmount:Double = 0
    private var _totalAmount:Double = 0
    
    init(billAmount:Double,tipPercent:Double) {
        self._billAmount = billAmount
        self._tipPercent = tipPercent
    }
    
    var billAmount:Double{
        get{
            return _billAmount
        }
        set{
            _billAmount = newValue
        }
    }
    
    var tipPercent:Double{
        get{
            return _tipPercent
        }
        set{
            _tipPercent = newValue
        }
    }
    
    var tipAmount:Double{
        return _tipAmount
    }
    
    var totalAmount:Double{
        return _totalAmount
    }
    
    func calculateTip(){
        _tipAmount = billAmount * tipPercent
        _totalAmount = billAmount + tipAmount
    }
}
