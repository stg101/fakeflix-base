class Serie < ApplicationRecord
end

# == Schema Information
#
# Table name: series
#
#  id          :bigint(8)        not null, primary key
#  description :text
#  price       :integer
#  rating      :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
