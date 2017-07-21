//
//  FieldSurvey.swift
//  FieldSurvey
//
//  Created by Shiyifan on 21/07/2017.
//  Copyright © 2017 Shiyifan. All rights reserved.
//

import Foundation

struct FieldSurvey {
    let classification: Field
    let title: String
    let description: String
    let date: Date
    
    init(classification: Field, title: String, description: String, date: Date){
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(classificationName: String, title: String, description: String, date: Date){
        if let classification = Field(rawValue: classificationName){
            self.init(classification: classification, title: title, description: description, date: date)
        }else{
            return nil
        }
    }
}
