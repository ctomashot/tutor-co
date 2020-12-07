class ReservationsController < ApplicationController
     layout "sessions"


    def new
        @reservation = Reservation.new
        @my_instructor = Instructor.where(location_id: current_user.location_id)
        @my_instructor.name 
    end

    def create
        updated_reservation = reservation_params.merge(student_id: current_user.id)
        @my_instructor = Instructor.where(location_id: current_user.location_id)
        @my_instructor.name 
        @reservation = Reservation.new(updated_reservation)
        if @reservation.save
            redirect_to student_path(@student)
        else
            render :new
        end
    end

    def edit
        @reservation = Reservation.find(params[:id])
        @my_instructor = Instructor.where(location_id: current_user.location_id)
        @my_instructor.name 
    end

    def update
        @reservation = Reservation.find(params[:id])
        @my_instructor = Instructor.where(location_id: current_user.location_id)
        @my_instructor.name 
        if @reservation.update(reservation_params)
            redirect_to student_path(@reservation.student_id)
        else
            render :edit
        end
    end

    def destroy
        @reservation = Reservation.find(params[:id])
        id = @reservation.student_id
        @reservation.destroy

        redirect_to student_path(id)
    end

    private
     
    def reservation_params
        params.require(:reservation).permit(:date, :time, :student_id, :instructor_id, :room_id)
    end
end
