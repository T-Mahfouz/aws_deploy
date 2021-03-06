ActiveAdmin.register PrivacyPolicy do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :english_title, :arabic_title
  #
  # or
  #
  # permit_params do
  #   permitted = [:english_title, :arabic_title]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  # controller do
  #   if PrivacyPolicy.count == 1
  #     actions :all, :except => [:new]
  #   else if PrivacyPolicy.count == 0
  #          actions :all
  #          end
  #   end
  # end

  # action_item only: :index  do
  #   if PrivacyPolicy.count == 1
  #     actions :all, :except => [:new]
  #   else if PrivacyPolicy.count == 0
  #          actions :all
  #        end
  #   end
  # end


  form do |f|
    f.inputs 'PrivacyPolicy' do
      f.input :english_title
      f.input :arabic_title
      f.input :english_text, as: :quill_editor
      f.input :arabic_text, as: :quill_editor
    end
    f.actions
  end

  show do
    attributes_table do
    row :english_title
    row :arabic_title
    row :english_text
    row :arabic_text
    end
  end

  permit_params :english_title, :arabic_title, :english_text, :arabic_text
end
