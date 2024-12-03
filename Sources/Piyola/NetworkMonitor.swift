//
//  NetworkMonitor.swift
//
//
//  Created by Bilol Sanatillayev on 10/10/24.
//

import Network
import Foundation

public class NetworkMonitor {

    private let monitor = NWPathMonitor()
    private let queue = DispatchQueue(label: "NetworkMonitor")

    var isConnected: Bool = false
    var isOnCellular: Bool = false
    
    public init() {
        monitor.pathUpdateHandler = { [weak self] path in
            guard let self else { return }
            isConnected = path.status == .satisfied
            isOnCellular = path.usesInterfaceType(.cellular)
            if isConnected {
                NotificationCenter.default.post(name: .networkConnected, object: nil)
            } else {
                NotificationCenter.default.post(name: .networkDisconnected, object: nil)
            }
        }
        monitor.start(queue: queue)
    }

    public func stopMonitoring() {
        monitor.cancel()
    }
}
