class HomeController < ApplicationController
  
  def index
    @companies = Company.all
    @companies.each do |companies|
      puts company_path(companies.id)
    end
    @causes = Cause.all
    @organizations = Organization.all
  end
   
   def company
    @company = Company.where(:id=>params[:id]).first
    rel = Comporg.where(:comp_id=> @company.id).collect(&:org_id)
    @orgs = Organization.where(:id => rel)
    inter = @orgs.collect(&:id)
    rel2 = Causeorg.where(:org_id=>inter).collect(&:cause_id)
    @causes = Cause.where(:id=>rel2)
   end

   # def cause
   #  @cause = Cause.find(params[:id])
   #  rel = Causeorg.where(:cause_id=> @cause.id).collect(&:org_id)
   #  @orgs = Organization.where(:id => rel)
   #  rel2= Comporg.where(:comp_id=> @orgs.id).collect(&:comp_id)
   #  @companies = Company.where(:id=>rel2)
   # end 

   # def organization
   #  @org = Organization.find(params[:id])
   #  rel = Causeorg.where(:org_id=> @org.id).collect(&:cause_id)
   #  @causes = Cause.where(:id => rel)
   #  rel2= Comporg.where(:org_id=> @org.id).collect(&:comp_id)
   #  @companies = Company.where(:id=>rel2)
   # end 

end
