class Review
  @@review_count=0
  def self.get_review_count
    return @@review_count
  end
  def initialize
    puts "タイトルを入力してください"
    @title = gets.chomp
    puts "ジャンルを入力してください"
    @genre = gets.chomp
    puts "感想を入力してください"
    @impression = gets.chomp
    @@review_count = @@review_count+1
  end

  def show_review
    line = "---------------------------"
    puts "ジャンル : #{@genre}\n#{line}\n"
    puts "タイトル : #{@title}\n#{line}\n"
    puts "感想 :\n#{@impression}\n#{line}\n"
  end
end

review = Review.new  # Reviewクラスのインスタンスを生成
review.show_review  # show_reviewメソッドを実行

puts Review.get_review_count
