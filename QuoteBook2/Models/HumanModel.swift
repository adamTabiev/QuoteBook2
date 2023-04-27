//
//  HumanModel.swift
//  QuoteBook2
//
//  Created by Адам Табиев on 27.04.2023.
//

import Foundation

enum QuotationСharacteristic: String { // характеристика цитаты
    case selfProvement = "Самосовершенствование"
    case children = "Дети"
}

struct Human: Identifiable {
    var id = UUID()
    var name: String
    var briefBio: String
    var biography: String?
    var сomment: [Comment]?
    
    var  imageName: String { return name }
}

struct Comment: Identifiable {
    var id = UUID()
    var comment: String
    var Сharacteristic: QuotationСharacteristic
    
}


extension Human {
    
    static let sample = Human(
        name: "Лев Толстой",
        briefBio: "Русский писатель XIX века",
        сomment: [
            Comment(comment: "Каждый хочет изменить человечество, но никто не задумывается о том, как изменить себя.", Сharacteristic: .children),
            Comment(comment: "Красота, спасёт мир", Сharacteristic: .children),
            Comment(comment: "Терпенье и труд, всё перетрут", Сharacteristic: .children)
        ]
    )
    
    
    static let sampleForBio = Human(
        name: "Лев Толстой",
        briefBio: "Русский писатель XIX века",
        biography: "один из наиболее известных русских писателей и мыслителей, один из величайших писателей-романистов мира. Участник обороны Севастополя. Просветитель, публицист, религиозный мыслитель, его авторитетное мнение послужило причиной возникновения нового религиозно-нравственного течения — толстовства. За свои взгляды был отлучён от церкви. Член-корреспондент Императорской Академии наук 1873 года, почётный академик по разряду изящной словесности 1900 года. Был номинирован на Нобелевскую премию по литературе 1902, 1903, 1904, 1905 годы. Впоследствии отказался от дальнейших номинаций. Классик мировой литературы. Писатель, ещё при жизни признанный главой русской литературы. Творчество Льва Толстого ознаменовало новый этап в русском и мировом реализме, выступив мостом между классическим романом XIX века и литературой XX века. Лев Толстой оказал сильное влияние на эволюцию европейского гуманизма, а также на развитие реалистических традиций в мировой литературе. Произведения Льва Толстого многократно экранизировались и инсценировались; его пьесы ставились на сценах всего мира. Лев Толстой был самым издаваемым в СССР писателем за 1918—1986 годы: общий тираж 3199 изданий составил 436,261 млн экземпляров."
    )
    
}

