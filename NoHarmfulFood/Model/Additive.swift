//
//  Additive.swift
//  NoHarmfulFood
//
//  Created by Артем on 10/04/2019.
//  Copyright © 2019 Gukov.space. All rights reserved.
//

import UIKit

struct Additive {
    var id: Int
    var name: String
    var source: Source
    var category: Category
    var danger: Danger
    var note: String
}

enum Category: String {
    case antioxidants = "Антиоксиданты",
        aromatizers = "Ароматизаторы",
        substancesAgainstCaking = "Вещества против слеживания",
        waterRetainingAgents = "Влагоудерживающие агенты",
        waxes = "Воски",
        thickeners = "Загустители",
        complexingAgent = "Комплексообразователи",
        preservatives = "Консерванты",
        colors = "Красители",
        frothers = "Пенообразователи",
        sweetenings = "Подсластители",
        bakingPowder = "Разрыхлители",
        acidityRegulators = "Регуляторы кислотности",
        stabilizers = "Стабилизаторы",
        texturizers = "Текстураторы",
        tasteBooster = "Усилители вкуса и аромата",
        locksColor = "Фиксаторы окраски",
        emulsifiers = "Эмульгаторы"
}

enum Source: String {
    case vegetable = "Растительное",
        natural = "Натуральное",
        synthetic = "Синтетическое"
}

enum Danger: String {
    case null = "Отсутствует", low = "Низкая", medium = "Средняя", high = "Высокая"
}

extension Additive {
    static func loadData() -> [Additive] {
        return [
            Additive(id: 102, name: "Тартразин", source: .synthetic, category: .colors, danger: .medium, note: "Тартразин (пищевая добавка Е102) — пищевой краситель синтетического происхождения. В природе в чистом виде не встречается. Краситель Е102 добывается из отходов производства — каменноугольного дегтя. По своей физической форме тартразин — растворимый в воде порошок желтого цвета с золотым оттенком. Под воздействием солнечного света добавка Е102 может распадаться на более простые соединения."),
            Additive(id: 401, name: "Альгинат натрия", source: .natural, category: .stabilizers, danger: .null, note: "Альгинат натрия (пищевая добавка Е401) представляет собой соль альгиновой кислоты. С химической точки зрения это полисахарид природного происхождения, состоящий из остатков D-маннуроновых и L-гулуроновой кислот. /nПо своим физическим свойствам добавка Е401 - это порошок кремового или светло-коричневого цвета, который хорошо растворяется в воде, удерживает влагу, обладает стабилизирующим действием и в общем, является желирующим веществом. Применение альгината натрия в пищевой промышленности основано на его способности образовывать гели. "),
            Additive(id: 954, name: "Сахарин", source: .synthetic, category: .tasteBooster, danger: .medium, note: "Сахарин (пищевая добавка E954) – сладкие кристаллы, не имеющие цвета и запаха, малорастворимые в воде и спирте, плавятся при температуре 228-229 С. На вкус сахарин слаще сахара примерно в 300-500 раз. Это вещество применяется вместо сахара диабетиками. Сахарин не обладает полезными свойствами, не смотря на то, что он имеет низкую калорийность, похудеть за его счет не получится: он снижает сжигание калорий, но повышает аппетит. "),
            Additive(id: 221, name: "Бензоат натрия", source: .synthetic, category: .preservatives, danger: .high, note: "Бензоат натрия (пищевая добавка Е211) представляет собой соединение бензойной кислоты присутствующей в природе в низкой концентрации в таких продуктах, как чернослив, клюква корица, гвоздика, яблоки. Бензоат натрия является продуктом реакции нейтрализации бензойной кислоты гидроксидом натрия. Благодаря хорошей растворимости в воде бензоат натрия в качестве пищевой добавки Е211 применяется гораздо чаще, чем бензойная кислота (добавка Е210), обладающая более сильными консервирующими свойствами, но низким уровнем растворимости. На вид добавка Е211 представляет собой порошкообразное вещество белого цвета не имеющее запаха либо обладающее незначительным запахом бензальдегида. "),
            Additive(id: 406, name: "Агар", source: .natural, category: .stabilizers, danger: .null, note: "Агар (пищевая добавка Е406) – желтоватый порошок, или пластины, содержащие минеральные соли, воду и 80% полисахаридов./n В холодной воде добавка Е406 не растворяется, для этого нужна температура 95-100 °С. Если затем охладить такой раствор до температуры в 35-40 °С, то вещество превращается в термообратимый гель, то есть при последующем нагревании снова становится жидким, а при охлаждении загустеет.")
        ]
    }
}
