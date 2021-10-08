class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    
    if req.path.match(/test/)
      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json]]

    elsif req.path.match(/trainers/) && req.get?
      trainers_json = Trainer.all.to_json(:include => { :sessions => {
        :include => { :client => {
                      :only => [:name, :age] } }
      }
     })

      return [200, { 'Content-Type' => 'application/json' }, [trainers_json]]

    elsif req.path.match(/clients/) && req.get?
   client_json = Client.all.to_json(:include => { :sessions => {
    :include => { :trainer => {
                  :only => [:name, :image, :rating] } }
  }
 })

    return [200, { 'Content-Type' => 'application/json' }, [client_json]]

  elsif req.path.match(/sessions/) && req.get?
    session_json = Session.all.to_json

   return [200, { 'Content-Type' => 'application/json' }, [session_json]]

  # elsif req.path.match(/ClientLogin/) && req.get?
  #   client_json = Client.find_by(:name)

  #   (:include => { :sessions => {
  #     :include => { :trainer => {
  #                   :only => [:name, :image] } }
  #   }
  #  })

  #  return [200, { 'Content-Type' => 'application/json' }, [client_json.to_json()]]
      

    elsif req.path.match(/clients/) && req.post?
      session_hash = JSON.parse(req.body.read)
      new_session = Session.create(session_hash)
    
      return [201, { 'Content-Type' => 'application/json' }, [new_session.to_json(:include => { :trainer => {
        :only => [:name, :image] } })]]
     
    elsif req.path.match(/client_Register/) && req.post?
      session_hash = JSON.parse(req.body.read)
      new_client = Client.create(session_hash)
    
      return [201, { 'Content-Type' => 'application/json' }, [new_client.to_json()]]

    elsif req.path.match(/clientLogin/) && req.post?
      login_hash = JSON.parse(req.body.read)
      login_client = Client.find_by(name: login_hash["name"])
     if login_client
     
      return [201, { 'Content-Type' => 'application/json' }, [login_client.to_json(:include => { :sessions => {
        :include => { :trainer => {
                      :only => [:name, :image, :rating] } }
      }
     })]]
     else 
      return [404, { 'Content-Type' => 'application/json' }, [{:error => "Client doesn't exist. You need to lift more."}.to_json()]]
     end
    elsif req.path.match(/clients/) && req.delete?
      id = req.path.split("/").last
      found_session = Session.find(id)
      found_session.destroy

      return [200, { 'Content-Type' => 'application/json' }, [ found_session.to_json()]]

    elsif req.path.match(/clients/) && req.patch?
      update_session = JSON.parse(req.body.read)

      id = req.path.split("/").last
      found_session = Session.find(id)

      found_session.update(update_session)

      return [200, { 'Content-Type' => 'application/json' }, [ found_session.to_json(:include => { :trainer => {
        :only => [:name, :image] } })]]
    else
      [404, {}, ["path not found!!!"]]
    end
  end
end

#   private

#   def send_hello
#     return [200, { "Content-Type" => "application/json" }, [{ :message => "hello world!" }.to_json]]
#   end

#   def send_not_found
#     return [404, {}, ["Path not found!!!"]]
#   end
# end
