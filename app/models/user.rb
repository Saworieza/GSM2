class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :accounts
  has_many :contractorinvoices
  has_many :contractorpos
  has_many :contractorquotes
  has_many :contractors
  has_many :contracts
  has_many :costcenters
  has_many :customerpos
  has_many :customerquotes
  has_many :invoices
  has_many :milestones
  has_many :regions
  has_many :scopes
  has_many :sites
  has_many :stages, inverse_of: :user
  has_many :statuses
  has_many :towns


    attr_writer :login
    def login
      @login || self.username || self.email
    end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      if conditions[:username].nil?
        where(conditions).first
      else
        where(username: conditions[:username]).first
      end
    end
  end
end


