module PhcdevworksCore
  module PhcdevworksPluginsHelper
  
    # PHCDevworks - Accounts - Add Admin Only Filter
    def phcdevworks_accounts_admin_only
      unless current_user && current_user.admin?
        redirect_to main_app.root_path, :flash => { :error => "Sorry Access Denied. Adminisistration Access Required!" }
      end
    end

    # PHCDevworks - Accounts - Who Dunnit
    def user_for_paper_trail
      current_user ? current_user.username : 'Public user'
    end

    # PHCDevworks - Members - Grab Member Information
    def phcmembers_get_member_profile_info
      @members_profile_info = Phcdevworksmembers::Member::Profile.find(params[:profile_id])
    end

    # PHCDevworks - RealEstate - All Listings
    def phcdevworks_real_listings_all
      @perty_real_listings__all = Phcdevworksrealestate::Property::Listing.all
    end

    # PHCDevworks - RealEstate - Resolve Layouts
    def resolve_property_listing_layouts
      case action_name
        when "new", "create"
          "application"
        when "index"
          "phcdevworks_real_estate/property_list"
        else
          "application"
      end
    end

  end
end
