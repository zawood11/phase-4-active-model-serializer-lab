class AuthorPostSerializer < ActiveModel::Serializer
    attributes :title, :short_content
    
    has_many :tags, serializer: PostTagSerializer
  
    def short_content
      "#{self.object.content[0..39]}..."
    end
end