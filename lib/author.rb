class Author

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    posts =[]
    Post.all.each do |post|
      if post.author.name == self.name
        posts << post
      end
    end
    posts
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(name)
    Post.new(name).author = self
  end

  def self.post_count
    Post.all.size
  end
end
