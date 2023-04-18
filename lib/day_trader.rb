def day_trader(prices)
    best_profit = 0  # Initialisation de la meilleure profit.
    best_days = []  # Initialisation des meilleurs jours.
    
    # Parcourt tous les jours sauf le dernier.
    (0..prices.length-2).each do |buy_day|
      # Parcourt tous les jours à partir du jour d'achat.
      (buy_day+1..prices.length-1).each do |sell_day|
        # Calcule le profit pour ces deux jours.
        profit = prices[sell_day] - prices[buy_day]
        
        # Si le profit est meilleur que le précédent meilleur profit, met à jour les meilleurs jours et la meilleure profit.
        if profit > best_profit
          best_profit = profit
          best_days = [buy_day, sell_day]
        end
      end
    end
    
    # Retourne les meilleurs jours.
    return best_days
  end

  puts day_trader([20])