class SearchController < ApplicationController
  def search
  	@model = params["search"]["model"]
  	@content = params["search"]["content"]
  	@how = params["search"]["how"]
  	@dates = search_for(@how,@model,@content)
  end

  private

  def match(model,content)
  	if model =='ユーザ名'
  		User.where(name: content)
  	elsif model == 'クラブ名'
  		Club.where(name: content)
    elsif model == '投稿タイトル'
      Post.where(title: content)
  	end
  end


  def partical(model, content)
    if model == 'ユーザ名'
      User.where("name LIKE ?", "%#{content}%")
    elsif model == 'クラブ名'
      Club.where("name LIKE ?", "%#{content}%")
    elsif model == '投稿タイトル'
      Post.where("title LIKE ?", "%#{content}%")
    end
  end

  def search_for(how,model,content)
  	case how
  	when 'match'
  		match(model,content)
  	when 'partical'
  		partical(model,content)
  	end
  end
end
