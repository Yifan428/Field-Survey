//
//  FieldSurveyJSONParser.swfit.swift
//  FieldSurvey
//
//  Created by Shiyifan on 21/07/2017.
//  Copyright © 2017 Shiyifan. All rights reserved.
//

import Foundation

class FieldSurveyJSONParser{
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [FieldSurvey] {
        var fieldSurveys = [FieldSurvey]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with:data, options:[]),
            let root = json as? [String:Any],
            let status = root["status"] as? String,
            status == "ok"{
            
            if let surveys = root["surveys"] as? [Any]{
                for survey in surveys{
                    if let survey = survey as? [String: String]{
                        if let classificationName = survey["classification"],
                            let title = survey["title"],
                            let description = survey["description"],
                            let dateString = survey["date"],
                            let date = dateFormatter.date(from:dateString){
                            
                            if let fieldSurvey = FieldSurvey(classificationName: classificationName, title: title, description: description, date: date){
                                fieldSurveys.append(fieldSurvey)
                                }
                            }
                        }
                    }
                }
            }
        return fieldSurveys
    }
}
