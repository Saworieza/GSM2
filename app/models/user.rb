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
  # has_many :paymentvouchers
  has_many :regions
  has_many :scopes
  has_many :sites
  has_many :stages
  has_many :statuses
  has_many :towns
end
