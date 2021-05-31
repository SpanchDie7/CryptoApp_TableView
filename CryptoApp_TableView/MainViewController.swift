//
//  MainViewController.swift
//  CryptoApp_TableView
//
//  Created by Дарья on 31.05.2021.
//

import UIKit

class MainViewController: UITableViewController {
    
    
let cryptoNames = [ "Bitcoin <BTC>", "Ethereum <ETH>", "Ripple <XRP>", "Bitcoin Cash <BCH>" ,"Litecoin <LTC>" ,"Binance Coin <BNB>", "Polkadot <DOT>", "Tether <USDT>", "EOS <EOS>", "Bitcoin SV <BSV>"]


    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cryptoNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = cryptoNames[indexPath.row]
        cell.imageView?.image = UIImage(named: cryptoNames[indexPath.row ])
       

        return cell
    }
    

   
}
