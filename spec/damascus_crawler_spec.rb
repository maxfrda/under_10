require_relative '../lib/remove_closed.rb'

describe StoreRemover do

  describe'#remove_closed' do
    context 'Uses Yelp API' do
      context 'with search query Damascus' do
        it 'returns restaurants that have not closed' do
          expect(StoreRemover.remove_closed('Damascus')).to include("Domino's Pizza",
            'Ledo Pizza', 'Subway', "Mcdonald's", 'Little Far East II',
            'Sky Kitchen', 'Tasty 68', "Dunkin'", "PAPi's Peruvian Chicken And Grill",
            'Starbucks', "Quincy's", "New York J & P Pizza", 'Red Rooster', 'Tokyo Fire',
            "Maggi's Pizza and Deli", 'Hornets Nest Grille', 'Jimmie Cone', 'Chipotle' )
        end
      end
    end
  end
end
