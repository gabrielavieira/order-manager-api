module Api
	class OrdersController < ApplicationController
		def index
			orders = Order.order('created_at DESC');
			render json: {status: 'SUCCESS', message:'Orders', data:orders},status: :ok
		end

		def show
			order = Order.find(params[:id])
			render json: {status: 'SUCCESS', message:'Loaded order', data:order},status: :ok
		end

		def create
			order = Order.new(order_params)
			if order.save
				render json: {status: 'SUCCESS', message: 'Saved order.', data: order}, status: :ok
			else
				render json: {status: 'ERROR', message: 'Order not saved', data:order.erros}, status: :unprocessable_entity
			end
		end

		def destroy
			order = Order.find(params[:id])
			order.destroy
			render json: {status: 'SUCCESS', message: 'Deleted order', data: order}, status: :ok
		end

		private
		def order_params
			params.permit(:reference, :purchaseChannel, :clientName, :address, :deliveryService)
		end
	end
end