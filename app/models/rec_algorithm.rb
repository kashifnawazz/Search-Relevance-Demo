class RecAlgorithm

  def self.trendy_n_pricey
    {
      query: {
        function_score: {
          query: {match_all: {} },
          boost: 1,
          functions: [
            {
              script_score: {
                script: "_score + 2 * doc['trendiness'].value + 0.5 * doc['price'].value"
              }          
            }
          ],
          max_boost: 7,
          score_mode: "sum",
        } 
      }
    }
  end

  def self.trendy_n_pricey_n_greenlit
    {
      query: {
        function_score: {
          filter: {ids: {values: [1,3,5,7,9,11,13,18,22,25,43,67,82,83,99 ] } },
          boost: 1,
          functions: [
            {
              script_score: {
                script: "_score + 2 * doc['trendiness'].value + 0.5 * doc['price'].value"
              }          
            }
          ],
          max_boost: 7,
          score_mode: "sum",
        } 
      }
    }
  end




end
