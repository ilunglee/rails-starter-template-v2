# rubocop:disable all
# Patch ActiveAdmin && WillPaginate
Kaminari.configure do |config|
  config.page_method_name = :per_page_kaminari
end

Draper::CollectionDecorator.send :delegate, :per_page_kaminari

require 'will_paginate/active_record'
module WillPaginate

  module ActiveRecord

    module RelationMethods

      alias total_count count

    end

  end

end
