local function networkListener(event)
   if (event.phase == "ended") then
      print("Response received: " .. event.response)
   end
end

local params = {}
params.headers = {}
params.headers["Content-Type"] = "application/json"
params.method = "GET"

network.request("http://localhost:8080/api", "GET", networkListener, params)
