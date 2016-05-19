require 'csv'

namespace :csv do
  desc "Import CSV Data from Data.gov on Provider Data"
  task :taskname => :environment do
    Provider.delete_all
    csv_file_path = 'db/Inpatient_Prospective_Payment_System__IPPS__Provider_Summary_for_the_Top_100_Diagnosis-Related_Groups__DRG__-_FY2011.csv'

    CSV.foreach(csv_file_path) do |row|
      Provider.create({
            :definition                => row[0],
            :prov_id                   => row[1],
            :name                      => row[3],
            :street_address            => row[4],
            :city                      => row[7],
            :state                     => row[8],
            :zipcode                   => row[9],
            :hospital_referral_region  => row[10],
            :total_discharges          => row[11],
            :avg_covered_charges       => row[12],
            :avg_total_payments        => row[13],
            :avg_cms_payments          => row[14]
        })
      end
  end
end
