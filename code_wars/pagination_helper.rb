
class PaginationHelper

  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
    @item_count = @collection.length
    @page_count = @item_count / @items_per_page + (@item_count % @items_per_page > 0 ? 1 : 0)    
  end
  
  def item_count
    @item_count
  end
	
  def page_count
    @page_count
  end

  def page_item_count(page_index)
    if (0..@page_count-1).include?(page_index)
      (page_index == @page_count - 1 ? 
        @item_count % @items_per_page 
        : @items_per_page) 
    else
      -1
    end
  end
	
  def page_index(item_index)
    indices_arr =  (0..@item_count-1).each_slice(@items_per_page).to_a
    if (0..@item_count-1).include?(item_index)
      indices_arr.each do |page|
        return indices_arr.index(page) if page.include?(item_index)
      end
    else
      -1
    end
  end
end

#Another way, using indices array.
class PaginationHelper
  def initialize(collection, items_per_page)
    @data = collection.each_slice(items_per_page).to_a
  end
  
  def item_count
    @data.reduce(0){|s,n|s+n.count}
  end
  
  def page_count
    @data.count
  end
  
  def page_item_count(page_index)
    return -1 if page_index < 0 or page_index >= @data.count
    @data[page_index].count
  end
  
  def page_index(item_index)
    @data.each_with_index do |data, index|
      return index if data.include?(item_index + 1)
    end
    return -1
  end
end