Fabricator(:admin) do
  email 'admin@terranullrecordings.com'
  password 'password'
  password_confirmation { |attrs| attrs[:password] }
end
