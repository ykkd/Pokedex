// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum Alert {
    internal enum Button {
      /// Close
      internal static let close = L10n.tr("Localizable", "alert.button.close", fallback: "Close")
    }
    internal enum Title {
      /// Error
      internal static let error = L10n.tr("Localizable", "alert.title.error", fallback: "Error")
    }
  }
  internal enum Common {
    /// No.%d
    internal static func number(_ p1: Int) -> String {
      return L10n.tr("Localizable", "common.number", p1, fallback: "No.%d")
    }
  }
  internal enum ItemDetail {
    internal enum Information {
      /// Attributes
      internal static let attributes = L10n.tr("Localizable", "item_detail.information.attributes", fallback: "Attributes")
      /// Category
      internal static let category = L10n.tr("Localizable", "item_detail.information.category", fallback: "Category")
      /// Cost
      internal static let cost = L10n.tr("Localizable", "item_detail.information.cost", fallback: "Cost")
      /// Not for sale
      internal static let notForSale = L10n.tr("Localizable", "item_detail.information.not_for_sale", fallback: "Not for sale")
    }
  }
  internal enum PokemonDetail {
    internal enum Information {
      /// Ability 1
      internal static let firstAbility = L10n.tr("Localizable", "pokemon_detail.information.first_ability", fallback: "Ability 1")
      /// Height
      internal static let height = L10n.tr("Localizable", "pokemon_detail.information.height", fallback: "Height")
      /// Hidden Ability
      internal static let hiddenAbility = L10n.tr("Localizable", "pokemon_detail.information.hidden_ability", fallback: "Hidden Ability")
      /// %.1fkg
      internal static func kilogram(_ p1: Float) -> String {
        return L10n.tr("Localizable", "pokemon_detail.information.kilogram", p1, fallback: "%.1fkg")
      }
      /// %.1fm
      internal static func meter(_ p1: Float) -> String {
        return L10n.tr("Localizable", "pokemon_detail.information.meter", p1, fallback: "%.1fm")
      }
      /// None
      internal static let `none` = L10n.tr("Localizable", "pokemon_detail.information.none", fallback: "None")
      /// Ability 2
      internal static let secondAbility = L10n.tr("Localizable", "pokemon_detail.information.second_ability", fallback: "Ability 2")
      /// Type
      internal static let type = L10n.tr("Localizable", "pokemon_detail.information.type", fallback: "Type")
      /// Weight
      internal static let weight = L10n.tr("Localizable", "pokemon_detail.information.weight", fallback: "Weight")
    }
    internal enum Status {
      /// Attack
      internal static let attack = L10n.tr("Localizable", "pokemon_detail.status.attack", fallback: "Attack")
      /// Defense
      internal static let defense = L10n.tr("Localizable", "pokemon_detail.status.defense", fallback: "Defense")
      /// HP
      internal static let hitpoint = L10n.tr("Localizable", "pokemon_detail.status.hitpoint", fallback: "HP")
      /// SP.Atk
      internal static let specialAttack = L10n.tr("Localizable", "pokemon_detail.status.special_attack", fallback: "SP.Atk")
      /// SP.Def
      internal static let specialDefense = L10n.tr("Localizable", "pokemon_detail.status.special_defense", fallback: "SP.Def")
      /// Speed
      internal static let speed = L10n.tr("Localizable", "pokemon_detail.status.speed", fallback: "Speed")
    }
  }
  internal enum Tab {
    /// Item
    internal static let item = L10n.tr("Localizable", "tab.item", fallback: "Item")
    /// Localizable.strings
    ///   Pokedex
    /// 
    ///   Created by Tomosuke Okada on 2021/01/29.
    internal static let pokemon = L10n.tr("Localizable", "tab.pokemon", fallback: "Pokémon")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
