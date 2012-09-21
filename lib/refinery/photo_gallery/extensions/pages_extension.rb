module Refinery
  module PhotoGallery
    module Extensions
      module Pages
        def has_one_page_album
          has_one :album_page, :as => :page

          accepts_nested_attributes_for :album_page

          module_eval do
            def album_page=(album_page_params)
              # new
              if self.album_page.nil?
                self.build_album_page
              end

              # destroy
              if album_page_params[:album_id].blank?
                 self.album_page.destroy

              # create or update if changed
              elsif self.album_page.album_id.to_s != album_page_params[:album_id]
                self.album_page.update_attributes( album_page_params)
                self.album_page.save
              end


            end
          end

          attr_accessible :album_page

        end
      end
    end
  end
end

ActiveRecord::Base.send(:extend, Refinery::PhotoGallery::Extensions::Pages)