class StoreResource < ActiveResource::Base
  self.site = 'http://localhost:3000/admin'
   self.element_name = 'store'
end