module ApplicationHelper

	def errors_block_for resource
		if !resource.errors.messages.empty?
			render partial: "partials/errors", locals: {
				errors: resource.errors.messages
			}
		end
	end

end
