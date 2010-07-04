begin
  require 'bones'
rescue LoadError
  abort '### Please install the "bones" gem ###'
end

task :default => 'test:run'
task 'gem:release' => 'spec:run'

Bones {
  name  'mm-money'
  authors  'Toni Tuominen'
  email    'toni@piranhadigital.fi'
  url      'http://github.com/tjtuom/mm-money'

  ignore_file '.gitignore'

  depend_on 'money', '3.0.4'
  
  depend_on 'mongo_mapper', '0.8.2', :development => true
  depend_on 'rspec', '1.3.0', :development => true
}

