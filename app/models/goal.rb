class Goal < ApplicationRecord

  belongs_to :user
  belongs_to :category
  has_many :boosts
  has_many :boosters, through: :boosts, source: :user
  has_many :comments
  has_many :commenters, through: :comments, source: :user
  has_many :daily_goal_mets

  validates :name, :user_id, :start_date, :due_date, :overall_goal, :daily_goal, :category_id, presence: :true

  def self.valid_goals
    Goal.all.select { |goal| goal.start_date <= Date.current }
  end

  def self.active_goals
    Goal.all.select(&:active?)
  end

  def self.goals_due_soon # Show goals due soon (class method)
    Goal.all.select { |goal| goal.due_date < 10.days.from_now }
  end

  def self.goals_achieved
    Goal.where(achieved: true)
  end

  def self.num_daily_goals_met_yesterday #number of daily goals met today
    DailyGoalMet.select {|dg| dg.date == Date.yesterday }.count
  end

  def self.longest_current_streak
    Goal.all.max_by(&:daily_goal_streak)
  end

  def self.longest_current_streak_count
    longest_current_streak.daily_goal_streak
  end

  def self.record_streak
    Goal.all.max_by(&:longest_daily_goal_streak)
  end

  def self.record_streak_count
    record_streak.longest_daily_goal_streak
  end

  def self.average_percent_daily_goals_met
    percentage_total = Goal.all.map(&:percentage_of_daily_goals_met).inject(0, :+)
    (percentage_total.to_f / valid_goals.count.to_f).to_i
  end

  def active?
    start_date <= Date.current && achieved != true
  end

  def days_to_goal_due_date #Time to goal due date (instance method)
    (self.due_date.to_date - Date.current).to_i
  end

  def percentage_of_daily_goals_met
    days_since_goal_began = (Date.current - self.start_date.to_date).to_f
    if days_since_goal_began <= 0
      return 0
    else
      count = ((self.daily_goal_mets.count.to_f / days_since_goal_began)*100).to_f
      [count,100.0].min.round(1)
    end
  end

  def daily_goal_streak
    # this starts looking for a daily goal met entry for each day going back from yesterday. As soon as it encounters a day where the daily goal is not registered as achieved (i.e. the daily goal met doesn't exist), it stops counting.
    streak = 0
    date = Date.yesterday
    loop do
      break if !daily_goal_mets.find { |dgm| dgm.date == date }
      streak += 1
      date -=1
    end
    streak
  end

  def longest_daily_goal_streak
    # this looks back through all the days from yesterday to the goal start date, and returns the longest consecutive streak.
    longest_streak = 0
    current_streak = 0
    Date.yesterday.downto(self.start_date.to_date) do |date|
     if daily_goal_mets.find { |dgm| dgm.date == date }
       current_streak += 1
       # check if the longest_streak has been beaten
       longest_streak = current_streak if current_streak > longest_streak
     else
       current_streak = 0
     end
    end
    longest_streak
  end

  def number_of_comments #instance
    self.comments.count
  end

  def unique_commenters
    self.comments.map do |comment|
        comment.user
    end.uniq
  end

  def number_of_users_who_have_commented #Number of unique commenters (instance)
    unique_commenters.count
  end

  def number_of_boosters  #instance
    self.boosts.map do |boost|
      boost.user
    end.uniq.count
  end

  def check_date(date)
    true if daily_goal_mets.all.find { |d| d.date == date }
  end

  def user_name
    user.name
  end

end

# To applicationcontroller, add :set_user_time_zone. On signup user should enter their local time zone
# before_filter :set_user_time_zone
# def set_user_time_zone
#     Time.zone = current_user.time_zone
#   end
