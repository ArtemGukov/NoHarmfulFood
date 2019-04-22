//
//  Enums.swift
//  NoHarmfulFood
//
//  Created by Артем on 11/04/2019.
//  Copyright © 2019 Gukov.space. All rights reserved.
//

enum Category: String, CaseIterable {
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

enum Source: String, CaseIterable {
    case vegetable = "Растительное",
    animal = "Животное",
    natural = "Натуральное",
    unnatural = "Искусственное",
    synthetic = "Синтетическое"
}

enum Danger: String, CaseIterable {
    case null = "Нулевая",
    low = "Низкая",
    medium = "Средняя",
    high = "Высокая"
}
