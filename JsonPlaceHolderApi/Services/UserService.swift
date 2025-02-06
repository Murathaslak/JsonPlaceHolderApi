//
//  UserService.swift
//  JsonPlaceHolderApi
//
//  Created by Osman Murat Haslak on 5.02.2025.
//

import Foundation

class UserService {
    
    func downloadUsers(completion: @escaping([UserElement]?) -> ()) {
        guard let url = URL(string: APIURLs.getUsers()) else { return }
        
        // escaping clouserlar memory leak sebeb oluyor, onun onun için self'leri weak yapıyoruz
        NetworkManager.shared.download(url: url) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let data):
                completion(self.handleWithData(data))
            case .failure(let error):
                self.handleWithError(error)
            }
        }
    }
    
    private func handleWithError(_ error: Error) {
        print(error.localizedDescription)
    }
    
    private func handleWithData(_ data: Data) -> [UserElement]? {

        do {
            let users = try JSONDecoder().decode([UserElement].self, from: data)
            return users
        } catch {
            print(error)
            return nil
        }
        
    }
}
