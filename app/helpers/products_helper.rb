module ProductsHelper
    def categories_for_select
        Category.all.collect { |m| [m.name, m.id] }
      end
end
