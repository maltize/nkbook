class StaticController < ApplicationController

  caches_page [:rules, :privacy, :faq, :why]

end
