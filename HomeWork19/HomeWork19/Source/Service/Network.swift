//
//  Network.swift
//  HomeWork19
//
//  Created by Алина Власенко on 23.04.2024.
//

import Foundation

class Network {
    
    static let shared = Network()
    
    func fetchColors() {
        
        guard let url = Urls.colorUrl else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.request(
            request: request,
            expecting: Colors.self
        ) { result in
            switch result {
            case .success(let colors):
                DispatchQueue.main.async {
                    print(colors)
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
    
// MARK: - direct solution (whithout generics)
    
//    func loadColorData() {
//        
//        let urlString = "https://reqres.in/api/unknown"
//        guard let url = URL(string: urlString) else { return }
//        
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        
//        URLSession.shared.dataTask(with: request) { data, response, error in
//            
//            if let responseError = error {
//                debugPrint(responseError.localizedDescription)
//            } else {
//                debugPrint("")
//                
//                guard let responseData = data else { return }
//                
//                do {
//                    let result = try JSONDecoder().decode(Colors.self, from: responseData)
//                    debugPrint(result)
//                } catch (let parseError) {
//                    debugPrint(parseError.localizedDescription)
//                }
//            }
//        }.resume()
//    }
}
