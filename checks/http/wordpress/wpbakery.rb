module Intrigue
module Ident
module Check
class WordpressBakery < Intrigue::Ident::Check::Base

  def generate_checks(url)
    [
      {
        :type => "fingerprint",
        :category => "application",
        :tags => ["Wordpress Plugin"],
        :vendor =>"WPBakery",
        :product =>"WPBakery",
        :references => ["https://wpbakery.com/"],
        :version => nil,
        :match_type => :content_body,
        :match_content => /Powered by WPBakery Page Builder/i ,
        :match_details =>"header match",
        :hide => false,
        :paths => ["#{url}"],
        :require_product => "Wordpress",
        :inference => false
      }
    ]
  end

end
end
end
end
