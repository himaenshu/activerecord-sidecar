lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "activerecord-sidecar"
  spec.version       = "1.0.0.beta"
  spec.licenses      = ['MIT']
  spec.authors       = ["Himanshu Joshi"]
  spec.email         = ["himaenshu@gmail.com"]
  spec.summary       = "ActiveRecord Sidecar is the ruby gem for creating/dropping of views, synonyms and db-links using migrations."
  spec.homepage      = "https://github.com/himaenshu/activerecord-sidecar"
  spec.files         = Dir.glob("lib/**/*") + %w(License.txt README.md)
  spec.require_paths = ["lib"]
  spec.has_rdoc  		 = false
end
