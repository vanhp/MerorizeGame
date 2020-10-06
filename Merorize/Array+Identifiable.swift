//
//  Array+Identifiable.swift
//  Merorize

import Foundation

// define additional specific feature for the Array

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        return self.lastIndex(where: { $0.id == matching.id })
    }
}
