class Formulas
  class << self
    def attrs
      {
        hp: 250,
        mp: 50,
        ap: 7,
        gauge: 50,
        str: 15,
        dex: 26,
        res: 8,
        mag: 6,
        level: 1,
        equipLoad: armor[:weight] + weapon[:weight] + accessory_1[:weight] + accessory_2[:weight]
      }
    end

    def weapon
      {
        attack: 20,
        accuracy: 8,
        weight: 5.2
      }
    end

    def armor
      {
        defense: 14,
        weight: 3,
      }
    end

    def accessory_1
      { weight: 0 }
    end
    
    def accessory_2
      { weight: 0 }
    end

    def mod
      {
        attack: attrs[:str] + weapon[:attack],
        accuracy: (attrs[:dex] * 5 + weapon[:accuracy]) / 3,
        dodge: (((attrs[:str] + attrs[:dex] * 6) / 3) - attrs[:equipLoad]).ceil
      }
    end

    def hits(attack_points = 0)
      accmod = (((Formulas.mod[:accuracy] * 3 ) - Formulas.mod[:dodge]) / 5) - attack_points

      {
        weak: (100 - accmod).clamp(1, 99),
        strong: (100 - (accmod + 30 / 3)).clamp(1, 99),
        fierce: (100 - (accmod + 50 / 3)).clamp(1, 99)
      }
    end
  end
end