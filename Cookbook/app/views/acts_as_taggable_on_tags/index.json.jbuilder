json.array!(@acts_as_taggable_on_tags) do |acts_as_taggable_on_tag|
  json.extract! acts_as_taggable_on_tag, :id
  json.url acts_as_taggable_on_tag_url(acts_as_taggable_on_tag, format: :json)
end
