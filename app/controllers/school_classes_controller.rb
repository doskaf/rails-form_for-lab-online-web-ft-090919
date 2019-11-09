class SchoolClassesController < ApplicationController

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class =  SchoolClass.create(school_classes_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end
    
    def show
        @school_class = SchoolClass.find_by_id(params[:id])
    end

    def edit
        @school_class = SchoolClass.find_by_id(params[:id])
    end

    def update
        @school_class = SchoolClass.find_by_id(params[:id])
        @school_class.update(school_classes_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    private

    def school_classes_params(*args)
        params.require(:school_class).permit(*args)
    end

end