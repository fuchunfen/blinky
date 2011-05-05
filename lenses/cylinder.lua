map = "xy_to_latlon"
maxFovHeight = math.pi

function xy_to_latlon(x,y)

   local lon = x
   local lat = math.atan(y)
   if math.abs(lat) > math.pi*0.5 or math.abs(lon) > math.pi then
      return nil
   end

   return lat, lon
end

function init(fov,width,height,frame)
   return fov / frame;
end