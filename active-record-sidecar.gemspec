lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "active-record-sidecar"
  spec.version       = "1.0.0"
  spec.licenses      = ['MIT']
  spec.authors       = ["Himanshu Joshi"]
  spec.email         = ["himaenshu@gmail.com"]
  spec.summary       = "Active Record Sidecar is the ruby gem for creating/dropping of views, synonyms and db-links using migrations."
  spec.homepage      = "https://github.com/himaenshu/active-record-sidecar"
  spec.files         = Dir.glob("lib/**/*") + %w(License.txt README.md)
  spec.require_paths = ["lib"]
  spec.autorequire 	 = 'builder'
  spec.has_rdoc  		 = false
end
