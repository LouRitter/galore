module PaginationHelper

    def first_item_index(page, count)
        ((page.to_i - 1) * count.to_i)+1
    end

    def last_item_index(page, count, total)
        last =  (page.to_i * count.to_i)
        last < total.to_i ? last : total
    
    end

    def page_count(count, total)
        (total.to_f / count.to_f).ceil.to_i + 1
    end

    def prev_page(page)
        page.to_i - 1
    end

    def next_page(page)
        page.to_i + 1

    end


end