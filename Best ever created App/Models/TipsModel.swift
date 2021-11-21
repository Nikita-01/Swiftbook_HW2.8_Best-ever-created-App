//
//  Tips.swift
//  Best ever created App
//
//  Created by Ирина on 19.11.2021.
//

struct Tips {
    let morningTips: String
    let dayTimeTips: String
    let eveningTips: String
    let nightTips: String
}

extension Tips {
    static func getTips() -> [Tips] {
        var tips: [Tips] = []

        let morningAdvice = DataManager.tips.morningTips
        let dayTimeAdvice = DataManager.tips.tipsforTheDayTime
        let eveningAdvice = DataManager.tips.tipsForTheEvening
        let nightAdvice = DataManager.tips.tipsForTheNight

        let iterationCount = min(
            morningAdvice.count,
            dayTimeAdvice.count,
            eveningAdvice.count,
            nightAdvice.count
        )

        for index in 0..<iterationCount {
            let advice = Tips(
                morningTips: morningAdvice[index],
                dayTimeTips: dayTimeAdvice[index],
                eveningTips: eveningAdvice[index],
                nightTips: nightAdvice[index])

            tips.append(advice)
        }

        return tips

    }
}
