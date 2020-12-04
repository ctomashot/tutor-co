class ReservationsController < ApplicationController



    def new
        @reservation = Reservation.new
    end

    def create
        @student = Student.find(params[:id])
        @reservation = Reservation.new(reservation_params)
        @reservation.student_id = @student.id
        if @reservation.save
            redirect_to student_path(@student)
        else
            render :new
        end
    end

    def edit
        @reservation = Reservation.find(params[:id])
    end

    def update
        @reservation = Reservation.find(params[:id])
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
