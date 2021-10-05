//
//  ViewController.swift
//  CryptoTracker
//
//  Created by Konstantin Loginov on 03/10/2021.
//

import UIKit

class CurrencyController: UIViewController {
    @IBOutlet weak var tickerSegment: UISegmentedControl!
    @IBOutlet weak var viewTicker: UIView!
    @IBOutlet weak var lblTicker: UILabel!
    @IBOutlet weak var lblExchangeRate: UILabel!
    @IBOutlet weak var lblExchangeTicker: UILabel!
    @IBOutlet weak var stackCurrentRate: UIStackView!
    @IBOutlet weak var dateRangeSegment: UISegmentedControl!
    
    @IBAction func onTickerSegmentChange(_ sender: Any) {
        selectTicket(CryptoCurrency.allCases[tickerSegment.selectedSegmentIndex])
    }
    
    private let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    private let dataService = DataService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "CryptoTracker"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = titleTextAttributes
        setupDateRangeSegment()
        setupTickerSegment()
        setupChart()
    }
    
    private func setupChart() {
        // TODO: add chart
    }

    private func setupTickerSegment() {
        tickerSegment.setTitleTextAttributes(titleTextAttributes, for: .normal)
        tickerSegment.setTitleTextAttributes(titleTextAttributes, for: .selected)
        tickerSegment.selectedSegmentTintColor = .tintColor
        
        tickerSegment.removeAllSegments()
        for ticker in CryptoCurrency.allCases.reversed() {
            tickerSegment.insertSegment(withTitle: ticker.symbol, at: 0, animated: false)
        }
        
        tickerSegment.selectedSegmentIndex = 0
        selectTicket(.BTC)
    }
    
    private func setupDateRangeSegment() {
        // TODO: add range picker
    }
    
    private var currentCurrency: CryptoCurrency? = nil
    
    private func selectTicket(_ currency: CryptoCurrency) {
        
        if currentCurrency != currency {
            currentCurrency = currency
            
            lblTicker.text = currency.symbol
            lblExchangeRate.text = " "
            lblExchangeTicker.text = " "
            viewTicker.backgroundColor = currency.color
        }
        
        
    }

}

