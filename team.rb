# Lesson 7
# プロ野球チームの勝ち負け数を管理しよう
class Team
  # 変数
  attr_accessor :name, :win, :lose, :draw
  
  # 初期化メソッド
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  
  # 勝率
  def calc_win_rate()
    return self.win.to_f / (self.win.to_f + self.lose.to_f)
  end
  
  # 表示
  def show_team_result(year)
    puts "#{self.name} の#{year}年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate}です。"
  end
end

# 年設定
t_year = 2020

# チーム
s_team = [
  {name: "Giants", win: 67, lose: 45, draw: 8},
  {name: "Tigers", win: 60, lose: 53, draw: 7},
  {name: "Dragons", win: 60, lose: 55, draw: 5},
  {name: "BayStars", win: 56, lose: 58, draw: 6},
  {name: "Carp", win: 52, lose: 56, draw: 12},  
  {name: "Swallows", win: 41, lose: 69, draw: 10},  
]

s_team.each do |o_tm|
  # チームの初期化
  t = Team.new(o_tm[:name], o_tm[:win], o_tm[:lose], o_tm[:draw])
  # 出力
  t.show_team_result(t_year)
end
