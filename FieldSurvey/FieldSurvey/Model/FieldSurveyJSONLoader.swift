//
//  FieldSurveyJSONLoader.swift
//  FieldSurvey
//
//  Created by Shiyifan on 21/07/2017.
//  Copyright © 2017 Shiyifan. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader{
    
    class func load(fileName:String) -> [FieldSurvey]{
        var observations = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
           observations = FieldSurveyJSONParser.parse(data)
        }
        
        return observations
    }
    
}
