# # encoding: utf-8

# Inspec test for recipe task1_apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?  
 # This is an example test, replace with your own test.  
 describe user('root'), :skip do
  it { should exist }  
 end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do  
 it { should_not be_listening }
end

describe service('httpd') do  
 it { should be_installed }  
 it { should be_running }
end

describe file('/var/www/html/info.php') do  
 it { should be_file }
end

describe http('http://localhost:8080/info.php') do  
 its ('status') { should eq 200 }
end
