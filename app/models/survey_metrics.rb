class SurveyMetrics < ActiveRecord::Base
  attr_accessible :question, :answer, :target, :name, :total, :score, :accuracy
  
  def self.tally_survey_results(responses, results) 
    found_type = results[:personality_type]
    responses.keys.each do |question_name|
      # simply increase the total tallied questions for each subtype by one
      @metric = SurveyMetrics.find_by_name_and_target(question_name, question_name[0])
      @metric.total += 1
      @metric.save
      @metric = SurveyMetrics.find_by_name_and_target(question_name, question_name[1])
      @metric.total += 1
      @metric.save
      response = responses[question_name]
      if question_name[0] == 'E'
        if found_type[0] == 'E'
          @metric = SurveyMetrics.find_by_name_and_target(question_name, 'E')
          if response == '1'
            @metric.score += 1
            @corrolary = SurveyMetrics.find_by_name_and_target(question_name, 'I')
            @corrolary.score += 1
            @corrolary.accuracy = @corrolary.total == 0.0 ? 1.0 : @corrolary.score.to_f / @corrolary.total
            @corrolary.save!
          end
          @metric.accuracy = @metric.total == 0.0 ? 1.0 : @metric.score.to_f / @metric.total
          @metric.save!
        end
        if found_type[0] == 'I'
          @metric = SurveyMetrics.find_by_name_and_target(question_name, 'I')
          if response == '-1'
            @metric.score += 1 
            @corrolary = SurveyMetrics.find_by_name_and_target(question_name, 'E')
            @corrolary.score += 1
            @corrolary.accuracy = @corrolary.total == 0.0 ? 1.0 : @corrolary.score.to_f / @corrolary.total
            @corrolary.save!
          end
          @metric.accuracy = @metric.total == 0.0 ? 1.0 : @metric.score.to_f / @metric.total
          @metric.save!
        end
      elsif question_name[0] == 'S'
        if found_type[1] == 'S'
          @metric = SurveyMetrics.find_by_name_and_target(question_name, 'S')
          if response == '1'
            @metric.score += 1 
            @corrolary = SurveyMetrics.find_by_name_and_target(question_name, 'N')
            @corrolary.score += 1
            @corrolary.accuracy = @corrolary.total == 0.0 ? 1.0 : @corrolary.score.to_f / @corrolary.total
            @corrolary.save!
          end
          @metric.accuracy = @metric.total == 0.0 ? 1.0 : @metric.score.to_f / @metric.total
          @metric.save!
        end
        if found_type[1] == 'N'
          @metric = SurveyMetrics.find_by_name_and_target(question_name, 'N')
          if response == '-1'
            @metric.score += 1
            @corrolary = SurveyMetrics.find_by_name_and_target(question_name, 'S')
            @corrolary.score += 1
            @corrolary.accuracy = @corrolary.total == 0.0 ? 1.0 : @corrolary.score.to_f / @corrolary.total
            @corrolary.save!
          end
          @metric.accuracy = @metric.total == 0.0 ? 1.0 : @metric.score.to_f / @metric.total
          @metric.save!
        end
      elsif question_name[0] == 'T'
        if found_type[2] == 'T'
          @metric = SurveyMetrics.find_by_name_and_target(question_name, 'T')
          if response == '1'
            @metric.score += 1 
            @corrolary = SurveyMetrics.find_by_name_and_target(question_name, 'F')
            @corrolary.score += 1
            @corrolary.accuracy = @corrolary.total == 0.0 ? 1.0 : @corrolary.score.to_f / @corrolary.total
            @corrolary.save!
          end
          @metric.accuracy = @metric.total == 0.0 ? 1.0 : @metric.score.to_f / @metric.total
          @metric.save!
        end
        if found_type[2] == 'F'
          @metric = SurveyMetrics.find_by_name_and_target(question_name, 'F')
          if response == '-1'
            @metric.score += 1 
            @corrolary = SurveyMetrics.find_by_name_and_target(question_name, 'T')
            @corrolary.score += 1
            @corrolary.accuracy = @corrolary.total == 0.0 ? 1.0 : @corrolary.score.to_f / @corrolary.total
            @corrolary.save!
          end
          @metric.accuracy = @metric.total == 0.0 ? 1.0 : @metric.score.to_f / @metric.total
          @metric.save!
        end
      else  # J
        if found_type[3] == 'J'
          @metric = SurveyMetrics.find_by_name_and_target(question_name, 'J')
          if response == '1'
            @metric.score += 1 
            @corrolary = SurveyMetrics.find_by_name_and_target(question_name, 'P')
            @corrolary.score += 1
            @corrolary.accuracy = @corrolary.total == 0.0 ? 1.0 : @corrolary.score.to_f / @corrolary.total
            @corrolary.save!
          end
          @metric.accuracy = @metric.total == 0.0 ? 1.0 : @metric.score.to_f / @metric.total
          @metric.save!
        end
        if found_type[3] == 'P'
          @metric = SurveyMetrics.find_by_name_and_target(question_name, 'P')
          if response == '-1'
            @metric.score += 1 
            @corrolary = SurveyMetrics.find_by_name_and_target(question_name, 'J')
            @corrolary.score += 1
            @corrolary.accuracy = @corrolary.total == 0.0 ? 1.0 : @corrolary.score.to_f / @corrolary.total
            @corrolary.save!
          end
          @metric.accuracy = @metric.total == 0.0 ? 1.0 : @metric.score.to_f / @metric.total
          @metric.save!
        end
      end
    end
  end  
end
