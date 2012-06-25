# encoding: utf-8
class User < ActiveRecord::Base
  belongs_to :student
  belongs_to :group
  has_and_belongs_to_many :advertisements
  has_many :book_of_classes
  has_many :commentaries
  has_and_belongs_to_many :events
  has_many :messages

  attr_accessor :user_password
  attr_accessible :user_name, :user_surname, :user_secondname, :user_password, :user_email, :user_password_confirmation, :user_status, :group_id, :user_birthday, :user_icq, :user_phone, :user_avatar
  has_attached_file :user_avatar, :styles => {:thumb => "70x70#", :small => "150x150"}, :default_url => "/images/no_foto.jpg"

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :user_name, :presence => true, :length => {:maximum => 15}
  validates :user_surname, :presence => true, :length => {:maximum => 30}
  validates :user_secondname, :presence => true, :length => {:maximum => 20}
  validates :user_email, :presence => true, :format   => { :with => email_regex }, :uniqueness => { :case_sensitive => false}
  validates :user_password, :presence => true, :confirmation => true, :length => {:within => 6..15}
  validates :user_status, :presence => true
  validates :user_birthday, :presence => true

  before_save :encrypt_password

   def has_password?(submitted_password)
       encrypted_password == encrypt(submitted_password)
   end

  def self.authenticate(email, submitted_password)
    user = User.find_by_user_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end

  def self.authenticate_with_salt(id, cookie_salt)
    user = find_by_id(id)
    (user && user.salt == cookie_salt) ? user : nil
  end


    private

    def encrypt_password
      self.salt = make_salt if new_record?
      self.encrypted_password = encrypt(user_password)
    end

    def encrypt(string)
      secure_hash("#{salt}--#{string}")
    end
  def make_salt
      secure_hash("#{Time.now.utc}--#{user_password}")
    end

    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end
end