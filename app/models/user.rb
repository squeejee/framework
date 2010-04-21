class User
 
  include Mongoid::Document
  
  devise :authenticatable, :lockable, :recoverable,
         :rememberable, :registerable, :trackable, :timeoutable, :validatable
    
  field :login
  field :email
  field :first_name
  field :last_name
  field :admin, :type => Boolean
  field :subscribed, :type => Boolean, :default => false
  field :time_zone
  field :deleted_at, :type => DateTime
  
#  has_friendly_id :login, :use_slug => true
  
  liquid_methods :display_name, :perishable_token
  
  #Validations
  validates_uniqueness_of :email, :case_sensitive => false
  validates_uniqueness_of :login, :case_sensitive => false
  validates_presence_of :email
  validates_presence_of :login
  validates_length_of :email,    :within => 3..100
  # 
  # #Associations
  # has_one :profile
  # 
  # #Callbacks
  # before_validation :make_login, :on => :create
  # before_create :make_first_admin
  # before_create :create_profile
  # 
  # #Nested Attribuets
  # accepts_nested_attributes_for :profile, :allow_destroy => true, :update_only => true
  # 
  # def self.find_by_login_or_email(login)
  #   find_by_email(login) || find_by_login(login)
  # end
  # 
  # def self.invite_count
  #   User.sum(:invites)
  # end
  # 
  # def make_first_admin
  #   self.admin = true if first_user?
  # end
  # 
  # def create_profile
  #   self.profile = Profile.new
  # end
  # 
  # def make_login
  #   self.login = self.email.split("@")[0] if self.login.blank? && !self.email.blank?
  # end
  # 
  # def first_user?
  #   User.count == 0
  # end
  
  def display_name
    return email unless first_name && last_name
  end
  
  # def has_invites?
  #   invites > 0 || admin?
  # end
  # 
  # def deliver_password_reset_instructions!  
  #   reset_perishable_token!  
  #   Notifier.send_later(:deliver_password_reset_instructions, self)  
  # end

end
