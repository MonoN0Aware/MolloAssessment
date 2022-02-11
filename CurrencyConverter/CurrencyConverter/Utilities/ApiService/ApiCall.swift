import UIKit
import Alamofire
import SwiftyJSON
import RealmSwift

class ApiCall{
    
    let realm = try! Realm()
    fileprivate var urlLink: String
    
    init(urlLink: String){
        self.urlLink = urlLink
    }
    func getData(completionHandler: @escaping (CurrencyModel) -> Void){
        AF.request(urlLink).responseDecodable(of: CurrencyModel.self) { result in
            if let response = result.value{
                completionHandler(response)
            }
        }
    }
}



//
//import Foundation
//import Alamofire
//import SwiftyJSON
////"http://data.fixer.io/api/latest?access_key=e495167586ff929ca03db8c2c900ff94&format=1"
//class Services {
//    fileprivate var baseURL = ""
//    init (baseURL: String) {
//        self.baseURL = baseURL
//    }
//    func getData(accessKey: String, endPoint: String) {
//        //use JSONEncoding.deafult rather than URLEncoding.default
//        AF.request(self.baseURL + accessKey + endPoint, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).response { (responseData) in
//            guard let data = responseData.data else { return }
//            do {
//            let data = try JSONDecoder().decode([CurrencyModel].self, from: data)
//            } catch {
//
//            }
//        }
//    }
//}
//
//let service = Services(baseURL: "http://data.fixer.io/api/latest?access_key=")
//service.getData(accessKey: "e495167586ff929ca03db8c2c900ff94", endPoint: "&format=1")
//
//
//
//
//
