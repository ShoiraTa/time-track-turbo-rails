class Activity < ApplicationRecord
  belongs_to :user
  has_many :timelogs, dependent: :destroy
  
  TIMEFRAMES= [:day, :week, :month]

  def getCurrentLogs(timeframe, id)
    total = 0
    if timelogs
      logs = timelogs.where("created_at>?", 1.day.ago.utc ).where(user_id: id) if timeframe =='day'
      logs = timelogs.where("created_at>?", 1.week.ago.utc).where(user_id: id) if timeframe =='week'
      logs = timelogs.where("created_at>?", 1.month.ago.utc).where(user_id: id) if timeframe =='month'
      logs.map  do |log| 
        total+=log.minutes if log.minutes!= nil
      end
    end
     total > 60 ? "#{(total.to_f  / 60).round(1)} hrs" : "#{total} mins"
  end

  def getPrevLogs(timeframe)
    total = 0
    if timelogs
      logs = timelogs.where('created_at BETWEEN ? AND ?', 2.day.ago.utc,  1.day.ago.utc ).where(user_id: id) if timeframe == 'day'
      logs = timelogs.where('created_at BETWEEN ? AND ?', 2.week.ago.utc, 1.week.ago.utc).where(user_id: id) if timeframe == 'week'
      logs = timelogs.where('created_at BETWEEN ? AND ?', 2.month.ago.utc, 1.month.ago.utc).where(user_id: id) if timeframe == 'month'
      logs.map  do |log| 
        total+=log.minutes if log.minutes!= nil
      end
    end
     total > 60 ? "#{(total.to_f  / 60).round(1)} hrs" : "#{total} mins"
  end
end