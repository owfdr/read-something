class Genie
    def wish_for(&proc)
        @proc = proc
    end

    def grant_wish
        @proc.call if @proc
    end
end

genie = Genie.new
genie.wish_for { puts "Your wish is granted!" }
genie.grant_wish
