//
//  ConnectWallet.swift
//  iyura
//
//  Created by Christoph Drescher on 27.03.23.
//

import UIKit
import Glaip
import WalletConnectSwiftV2

class ConnectWallet: UIViewController {
    private var glaip: Glaip!

        override func viewDidLoad() {
            super.viewDidLoad()

            // Create Glaip instance
            self.glaip = Glaip(
                title: "Glaip Demo App",
                description: "Demo app to demonstrate Web3 login",
                supportedWallets: [.Rainbow]
            )

            // Create WalletConnect button
            let walletConnectButton = UIButton()
            walletConnectButton.setTitle("Connect with Rainbow Wallet", for: .normal)
            walletConnectButton.addTarget(self, action: #selector(connectWithRainbowWallet), for: .touchUpInside)
            walletConnectButton.backgroundColor = UIColor(red: 28/255, green: 141/255, blue: 115/255, alpha: 1.0)
            walletConnectButton.setTitleColor(.white, for: .normal)
            walletConnectButton.layer.cornerRadius = 5
            walletConnectButton.clipsToBounds = true

            // Add button to view
            self.view.addSubview(walletConnectButton)
            walletConnectButton.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                walletConnectButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                walletConnectButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
                walletConnectButton.widthAnchor.constraint(equalToConstant: 250),
                walletConnectButton.heightAnchor.constraint(equalToConstant: 50)
            ])
        }

        @objc func connectWithRainbowWallet() {
            // Connect with Rainbow Wallet
            self.glaip.loginUser(type: .Rainbow) { result in
                print(result)
            }
        }
}
