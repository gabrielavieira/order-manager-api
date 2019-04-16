module Api
	class BatchesController < ApplicationController
		def index
			batches = Batch.all
			render json: {status: 'SUCCESS', message:'List of batches.', data:batches},status: :ok
		end

		def show
			batch = Batch.find(params[:id])
			render json: {status: 'SUCCESS', message:'Loaded batch.', data:batch},status: :ok
		end

		def create
			batch = Batch.new(batch_params)
			if batch.save
				render json: {status: 'SUCCESS', message: 'Saved batch.', data: batch}, status: :ok
			else
				render json: {status: 'ERROR', message: 'Batch not saved.', data:batch.errors}, status: :unprocessable_entity
			end
		end

		def destroy
			batch = Batch.find(params[:id])
			batch.destroy
			render json: {status: 'SUCCESS', message: 'Deleted batch.', data: batch}, status: :ok
		end

		private
		def batch_params
			params.permit(:reference, :purchaseChannel, :orders)
		end
	end
end
