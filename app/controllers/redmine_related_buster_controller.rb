class RedmineRelatedBusterController < ApplicationController
  def show_orphans
    @project = Project.find(params[:project_id])
  end

  def perform_adoption
    @issue = Issue.find(params[:issue_id])
    orphans = @issue.relations_from.where(:status_id != @issue.status_id)

    orphans.each do |child|
      child.issue_to.update_attribute(:status_id, @issue.status_id)
    end

    flash[:notice] = "All orphans adopted!"
    redirect_to :back
  end
end
