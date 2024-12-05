function handleComplete(event:Event):void {
  var data:Object = event.target.data; 

  if (data != null) {
    if (data is Array) {
      if(data.length > 0){
        trace('Data is an array: ', data);
        // Safely access the first element if it exists and has the property
        if(data[0] != null && data[0].hasOwnProperty('someProperty')){
          trace('First element of the array: ', data[0].someProperty);
        } else {
          trace("First element is null or missing 'someProperty'");
        }
      } else {
        trace("Array is empty");
      }
    } else if (data is Object) {
      trace('Data is a single object: ', data);
      // Add checks here if needed for object properties
      if(data.hasOwnProperty('someProperty')){
        trace('someProperty: ', data.someProperty);
      } else {
        trace("Object is missing 'someProperty'");
      }
    } else {
      trace('Data is neither an array nor an object.');
    }
  } else {
    trace('Data is null.');
  }
}