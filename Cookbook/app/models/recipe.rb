class Recipe < ActiveRecord::Base
 acts_as_taggable
 acts_as_taggable_on :tag_list
 
 has_attached_file :avatar, :styles => { :medium => "150x150>", :thumb => "100x100>" }
 validates_attachment_content_type :avatar , :content_type => /\Aimage\/.*\Z/



def self.search(search)
  if search
    where('name LIKE ?', "%#{search}%")
  else
    all
  end
end

end
