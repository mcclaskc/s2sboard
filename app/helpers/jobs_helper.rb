module JobsHelper
  def owned_by_user?(user, job)
    user.id == job.user_id
  end

  def company_name(job)
    User.find_by_id(job.user_id).company
  end

end
