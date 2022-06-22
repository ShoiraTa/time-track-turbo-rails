class Activity < ApplicationRecord
  belongs_to :user
  has_many :timelogs, dependent: :destroy
  
  TIMEFRAMES= [:day, :week, :month]

  def getCurrentLogs(timeframe, id)
    total = 0
    if timelogs
      logs = timelogs.where("date>?", 1.day.ago.utc ).where(user_id: id) if timeframe =='day'
      logs = timelogs.where("date>?", 1.week.ago.utc).where(user_id: id) if timeframe =='week'
      logs = timelogs.where("date>?", 1.month.ago.utc).where(user_id: id) if timeframe =='month'
      logs.map  do |log| 
        total+=log.minutes if log.minutes!= nil
      end
    end
     total > 60 ? "#{(total.to_f  / 60).round(1)} hrs" : "#{total} mins"
  end

  def getPrevLogs(timeframe, id)
    total = 0
    if timelogs
      logs = timelogs.where('date BETWEEN ? AND ?', 2.day.ago,  1.day.ago ).where(user_id: id) if timeframe == 'day'
      logs = timelogs.where('date BETWEEN ? AND ?', 2.week.ago, 1.week.ago).where(user_id: id) if timeframe == 'week'
      logs = timelogs.where('date BETWEEN ? AND ?', 2.month.ago, 1.month.ago).where(user_id: id) if timeframe == 'month'
      logs.map  do |log| 
        total+=log.minutes if log.minutes!= nil
      end
    end
     total > 60 ? "#{(total.to_f  / 60).round(1)} hrs" : "#{total} mins"
  end
end