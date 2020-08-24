class CalculatorHomeController < ApplicationController
  def indexCal

  end

  def result
    # @plus_result = params[:num1] + params[:num2] # params + params 로 나왔다.
    @plus_result = params[:num1].to_i + params[:num2].to_i
  end
end
