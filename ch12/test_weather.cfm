<cfinvoke component="cfbook.ch12.weather" method="getWeatherReport" returnvariable="weatherInfo">  <cfinvokeargument name="zipCode" value="91792"></cfinvoke><cfdump var="#weatherInfo#">