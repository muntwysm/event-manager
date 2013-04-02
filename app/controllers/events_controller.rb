class EventsController < ApplicationController
  before_filter :require_admin, :except => [:index, :show]

  # GET /events
  # GET /events.xml
  def index
    @events = Event.all
    @title = "Events"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events }
    end
  end

  # GET /events/1
  # GET /events/1.xml
  def show
    @event = Event.find(params[:id])
    @title = "Event '#{@event.name}'"
    @requirements = @event.requirements
    @contributions_count = Contribution.find(:all, :conditions => ["event_id = ?", params[:id]]).count
    searchPhrase = " AND contributor LIKE '%#{params[:search]}%' " if params[:search]
    sql = "SELECT *
          FROM contributions
          WHERE event_id = #{params[:id]}
          #{searchPhrase}
          AND item_id NOT IN 
               (SELECT item_id
               FROM requirements
               WHERE event_id = #{params[:id]})"
    @orphaned_contributions = Contribution.find_by_sql(sql) 
    @not_needed = Contribution.find(:all, :conditions => ["event_id = ? AND req = ? #{searchPhrase} ", params[:id],false])

    if params[:search]
    searchPhrase = " AND contributor LIKE '%#{params[:search]}%' " if params[:search]
    bool_value = true
    sql = "SELECT *
          FROM requirements
          WHERE event_id = #{params[:id]}
          AND item_id IN 
               (SELECT item_id
               FROM contributions
               WHERE event_id = #{params[:id]}
               #{searchPhrase})"
               #AND req = #{bool_value})"
      @reqs = Contribution.find_by_sql(sql) 
    else
      @reqs = @event.requirements
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event }
    end
  end

  # GET /events/new
  # GET /events/new.xml
  def new
    @event = Event.new
    @event.requirements.build
    @locations = Location.all
    @title = "New Event"

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
    @title = "Edit '#{@event.name}' event"
    @event.requirements.build
    @locations = Location.all
  end

  # POST /events
  # POST /events.xml
  def create
    @event = Event.new(params[:event])
    @locations = Location.all

    respond_to do |format|
      if @event.save
        flash[:success] = "Event '#{@event.name}' successfully created."
        format.html { redirect_to(@event, :success => 'Event was successfully created.') }
        format.xml  { render :xml => @event, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.xml
  def update
    params[:event][:existing_requirement_attributes] ||= {}

    @event = Event.find(params[:id])
    @locations = Location.all

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to(event_path(@event))} 
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # GET /posts/1/duplicate
  def duplicate
    @event = Event.find(params[:id])
    @new_event = @event.dup
    @new_event.name = "Copy of - #{@new_event.name}"

    @event.requirements.each do |requirement|
      @new_event.requirements << requirement.dup
    end

    @new_event.save

    respond_to do |format|
      format.html { redirect_to(@new_event, :notice => 'Event duplicated - Please edit event name and date.') }
      format.json { render json: @events }
    end
  end

  # DELETE /events/1
  # DELETE /events/1.xml
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to(events_url) }
      format.xml  { head :ok }
    end
  end
end
