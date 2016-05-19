require 'csv'

namespace :csv do
  desc "Import CSV Data from Data.gov on Provider Data"
  task :taskname => :environment do
    Provider.delete_all
    csv_file_path = 'db/Inpatient_Prospective_Payment_System__IPPS__Provider_Summary_for_the_Top_100_Diagnosis-Related_Groups__DRG__-_FY2011.csv'

    CSV.foreach(csv_file_path) do |row|
      Provider.create({
        
        })
  end
end
