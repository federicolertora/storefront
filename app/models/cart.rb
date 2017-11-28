class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy
    
    def subtotal
        #the ruby way
        #line_items.to_a.sum { |item| item.total }
        #end
        
        #sql way (much faster!)
        line_items.select("SUM(quantity *price) AS sum")[0].sum
        
    end
end

# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
