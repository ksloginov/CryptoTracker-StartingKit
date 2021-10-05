//
//  DataService.swift
//  CryptoTracker
//
//  Created by Konstantin Loginov on 03/10/2021.
//

import Foundation

struct DataService {
    
    private static let token = "26807AD6-C5AF-41AD-BE0B-D6A1049C182A"
    let exchangeRateURL = "https://rest.coinapi.io/v1/exchangerate/%@/%@?apikey=\(token)"
    let historicalExchangeRatesURL = "https://rest.coinapi.io/v1/exchangerate/%@/%@/history?period_id=%@&time_start=%@T00:00:00&apikey=\(token)"
    
    private static let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
    
    
}
