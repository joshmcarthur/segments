class SegmentsController < ApplicationController
  respond_to(:html, :json, :xml)
  
  layout 'layouts/segment_layout'
  
  #Override authenticate_for_segments to handle authentication
  before_filter :authenticate_for_segments
  before_filter :load_segment, :except => [:index, :new, :create]
  
  def index
    respond_with @segments = Segment.all
  end
  
  def update
    respond_with @segment.update_attributes(params[:segment]), :location => segments_path
  end
  
  def create
    respond_with @segment = Segment.create(params[:segment]), :location => segments_path
  end
  
  def destroy
    respond_with @segment.destroy
  end
  
  def show
    respond_with @segment
  end
  
  
  private
  
  def authenticate_for_segments
    return true
  end
  
  def load_segment
    @segment = Segment.find(params[:id])
  end
end
