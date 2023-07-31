class WeatherIcon{
  //String? description = instanse!.description;
  String? weatherIcon({String? description}){
      if(description == 'clear sky'){
        return 'clear sky.png'; 
      }
      else if(description == 'few clouds'){
        return 'few clouds.png'; 
      }
      else if(description == 'scattered clouds'){
        return 'scattered clouds.png'; 
      }
      else if(description == 'thunderstorm'){
        return 'thunderstorm.png'; 
      }
      else if(description == 'snow'){
        return 'snow.png'; 
      }
      else if(description == 'mist'){
        return 'mist.png'; 
      }
      else if(description == 'rain'){
        return 'rain.png'; 
      }
      else if(description == 'broken clouds' || description == 'overcast clouds'){
        return 'broken clouds.png';
      }
      // else if(description == 'shower rain'){
      //   return 'rain_2469994.png';
      // }
      return 'shower rain.png';
    }
}