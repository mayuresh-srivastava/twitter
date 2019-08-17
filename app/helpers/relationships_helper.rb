module RelationshipsHelper
	def find_relationship current_user, user
		current_user.active_relationships.find_by(followed_id: user.id)
	end
end
