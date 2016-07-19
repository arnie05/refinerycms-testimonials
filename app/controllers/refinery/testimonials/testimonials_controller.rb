module Refinery
  module Testimonials
      class TestimonialsController < ::ApplicationController
        respond_to :json, :html

        def index
          @testimonials = Refinery::Testimonials::Testimonial.all
        end

        def show
          @testimonial = Refinery::Testimonials::Testimonial.find(params[:id])
        end
      end
    end
end
