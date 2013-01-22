class AssignmentsController < ApplicationController
  # GET /assignments
  # GET /assignments.json
  def index
    @assignments = current_user.assignments.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @assignments }
    end
  end

  # GET /assignments/1
  # GET /assignments/1.json
  def show
    @assignment = Assignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @assignment }
    end
  end

  # GET /assignments/new
  # GET /assignments/new.json
  def new
    @assignment = Assignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @assignment }
    end
  end

  # GET /assignments/1/edit
  def edit
    @assignment = Assignment.find(params[:id])
  end

  # POST /assignments
  # POST /assignments.json
  def create
    @assignment = Assignment.new(params[:assignment])

    respond_to do |format|
      if @assignment.save
        format.html { redirect_to @assignment, notice: 'Assignment was successfully created.' }
        format.json { render json: @assignment, status: :created, location: @assignment }
      else
        format.html { render action: "new" }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assignments/1
  # PUT /assignments/1.json
  def update
    @assignment = Assignment.find(params[:id])

    respond_to do |format|
      if @assignment.update_attributes(params[:assignment])
        format.html { redirect_to @assignment, notice: 'Assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignments/1
  # DELETE /assignments/1.json
  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy

    respond_to do |format|
      format.html { redirect_to assignments_url }
      format.json { head :no_content }
    end
  end
  def assign
    @assignment = Assignment.find(params[:id])
    d = @assignment.homework.split(",").map { |s| s.to_i }
    if d.length > 0
      @depots = @assignment.user.depots.where("id not in (?)",d)
    else
      @depots = @assignment.user.depots.all
    end
    respond_to do |format|
      format.js
    end
  end
  def puto
    @assignment = Assignment.find(params[:assignment])
    @assignment.add_homework(params[:depot])
    @depot = params[:depot]
    @assignment.save
    respond_to do |format|
      format.js
    end
  end
  def already
    @assignment = Assignment.find(params[:id])
    d = @assignment.homework.split(",").map { |s| s.to_i }
    if d.length > 0
    @depots = @assignment.user.depots.where("id in (?)", d)
    else
    @depots = @assignment.user.depots.where("id in (?)", d)
    end
    respond_to do |format|
      format.js
    end
  end
  def putout
    @assignment = Assignment.find(params[:assignment])
    if @assignment.homework.blank?
      @assignment.homework = ""
    end
    a = @assignment.homework.split(",").map {|s| s.to_i}
    a = a.delete(params[:depot].to_i)
    @assignment.homework = a.to_s
    @depot = params[:depot]
    @assignment.save
    respond_to do |format|
      format.js
    end
  end
end
