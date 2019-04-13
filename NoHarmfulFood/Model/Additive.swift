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

extension Additive {
    static func loadData() -> [Additive] {
        return [
            Additive(id: 102,
                     name: "Тартразин",
                     source: .synthetic,
                     category: .colors,
                     danger: .medium,
                     note: """
Тартразин (пищевая добавка Е102) — пищевой краситель синтетического происхождения. В природе в чистом виде не встречается. Краситель Е102 добывается из отходов производства — каменноугольного дегтя. По своей физической форме тартразин — растворимый в воде порошок желтого цвета с золотым оттенком. Под воздействием солнечного света добавка Е102 может распадаться на более простые соединения.
"""),
            Additive(id: 401,
                     name: "Альгинат натрия",
                     source: .natural,
                     category: .stabilizers,
                     danger: .null,
                     note: """
Альгинат натрия (пищевая добавка Е401) представляет собой соль альгиновой кислоты. С химической точки зрения это полисахарид природного происхождения, состоящий из остатков D-маннуроновых и L-гулуроновой кислот.

По своим физическим свойствам добавка Е401 - это порошок кремового или светло-коричневого цвета, который хорошо растворяется в воде, удерживает влагу, обладает стабилизирующим действием и в общем, является желирующим веществом. Применение альгината натрия в пищевой промышленности основано на его способности образовывать гели.
"""),
            Additive(id: 954,
                     name: "Сахарин",
                     source: .synthetic,
                     category: .tasteBooster,
                     danger: .medium,
                     note: """
Сахарин (пищевая добавка E954) – сладкие кристаллы, не имеющие цвета и запаха, малорастворимые в воде и спирте, плавятся при температуре 228-229 С. На вкус сахарин слаще сахара примерно в 300-500 раз. Это вещество применяется вместо сахара диабетиками. Сахарин не обладает полезными свойствами, не смотря на то, что он имеет низкую калорийность, похудеть за его счет не получится: он снижает сжигание калорий, но повышает аппетит.
"""),
            Additive(id: 221,
                     name: "Бензоат натрия",
                     source: .synthetic,
                     category: .preservatives,
                     danger: .high,
                     note: """
Бензоат натрия (пищевая добавка Е211) представляет собой соединение бензойной кислоты присутствующей в природе в низкой концентрации в таких продуктах, как чернослив, клюква корица, гвоздика, яблоки. Бензоат натрия является продуктом реакции нейтрализации бензойной кислоты гидроксидом натрия. Благодаря хорошей растворимости в воде бензоат натрия в качестве пищевой добавки Е211 применяется гораздо чаще, чем бензойная кислота (добавка Е210), обладающая более сильными консервирующими свойствами, но низким уровнем растворимости. На вид добавка Е211 представляет собой порошкообразное вещество белого цвета не имеющее запаха либо обладающее незначительным запахом бензальдегида.
"""),
            Additive(id: 406,
                     name: "Агар",
                     source: .natural,
                     category: .stabilizers,
                     danger: .null,
                     note: """
Агар (пищевая добавка Е406) – желтоватый порошок, или пластины, содержащие минеральные соли, воду и 80% полисахаридов. В холодной воде добавка Е406 не растворяется, для этого нужна температура 95-100 °С. Если затем охладить такой раствор до температуры в 35-40 °С, то вещество превращается в термообратимый гель, то есть при последующем нагревании снова становится жидким, а при охлаждении загустеет.
"""),
            Additive(id: 350,
                     name: "Малаты натрия",
                     source: .unnatural,
                     category: .waterRetainingAgents,
                     danger: .null,
                     note: """
Малаты натрия, имеющие маркировку Е350, являются натриевыми солями яблочной (малоновой) кислоты (добавка Е296) и используются в пищевой промышленности в качестве регулятора кислотности. По своим физическим свойствам малаты натрия представляют собой белый кристаллический порошок без явно выраженного вкуса и запаха. Добавка Е350 растворима в воде и нерастворима в этиловом спирте.
"""),
            Additive(id: 123,
                     name: "Амарант",
                     source: .synthetic,
                     category: .colors,
                     danger: .high,
                     note: """
Амарант (пищевая добавка Е123) — это химическое вещество синтетического происхождения — азокраситель, синевато-красного, красно-коричневого, или красно-фиолетового цвета, получаемый из каменноугольной смолы. Краситель Е123 представляет собой растворимый в воде порошок, который разлагается при температуре 120 C, но при этом не плавится.
"""),
            Additive(id: 1100,
                     name: "Амилаза",
                     source: .synthetic,
                     category: .texturizers,
                     danger: .null,
                     note: """
Амилаза (пищевая добавка E1100) – фермент, относящийся к ферментам пищеварения, гликозил-гидролаза, расщепляющая крахмал до олигосахаридов. В 1833 году французский химик Ансельм Пайа описал диастазу – фермент, расщепляющий крахмал до мальтозы. Таким образом, амилазы стали первыми изученными ферментами. Есть другое мнение, что амилаза была впервые открыта в 1814 году петербургским академиком К. Г. С. Кирхгофом. Появление сладковатого вкуса у крахмалосодержащих продуктов при их долгом пережевывании – это свидетельство наличия амилазы в слюне, которая является первым этапом переваривания пищи.

Существует три вида амилазы:
- альфа-амилаза, это кальций-зависимый фермент. Слюнная амилаза и амилаза поджелудочной железы относится к этому типу. Это вещество также распространено в организме у животных, как основной пищеварительный фермент, и замечено у некоторых растений.
- бета-амилаза, фермент, присутствующий у бактерий, грибов, растений, но отсутствующий у животных. Его наличием объясняется сладкий вкус зрелых плодов (так как этот фермент расщепляет плодовый крахмал на сахар), а такая амилаза пшеницы является основным компонентом при образовании солода.
- гамма-амилаза, наиболее активная амилаза в кислотной среде. В пищевой промышленности амилаза используется как улучшитель муки и хлеба, при приготовлении дрожжевого теста, придавая хлебу специфичный вкус и поднимая тесто. Иногда амилаза является добавкой для ускорения процесса брожения.

Другие использования амилазы:
- бактериальная амилаза используется в стиральных порошках, в качестве компонента, разлагающего крахмал, присутствующий в белье.
"""),
            Additive(id: 200,
                     name: "Сорбиновая кислота", source: .unnatural, category: .preservatives, danger: .low, note: """
Сорбиновая кислота (пищевая добавка Е200) представляет собой бесцветные, слабо растворимые в воде, кристаллы. Химическая формула сорбиновой кислоты: C6H8O2. Впервые сорбиновая кислота была получена из сока рябины в 1859 году. Отсюда она и берет свое название (Sorbus лат. — рябина). В 1939 году было открыто ее антимикробное действие. А уже в середине 50-х годов XX века началось промышленное производство сорбиновой кислоты и ее использование в качестве консерванта Е200. Сейчас сорбиновую кислоту (пищевую добавку Е200) в промышленных масштабах получают путем конденсации кетена с кротоновым альдегидом при помощи кислотных катализаторов.

Пищевая добавка Е200 обладает антимикробными свойствами, не токсична, не канцерогенна. В разумных дозах сорбиновая кислота оказывает положительное влияние на человеческий организм, повышая иммунитет и способствуя детоксикации организма. Благодаря этим свойствам добавка Е200 широко применяется в пищевой промышленности в качестве консерванта, позволяя увеличить сроки хранения продуктов питания.

В пищевых продуктах консервант Е200 применяется в концентрациях от 30 до 300 грамм на 100 килограмм готового продукта. К основным продуктам, в которых используется добавка E200 можно отнести: соки, безалкогольные напитки, кондитерские и хлебобулочные изделия, зернистую икру, колбасные изделия, сгущенное молоко и другие продукты.

Добавка Е200 является одним из самых распространенных консервантом в пищевой промышленности ввиду своей безопасности для организма человека.

Консервант Е200 разрешен для использования в пищевой промышленности России, Украины и других стран.
""")
        ]
    }
}
