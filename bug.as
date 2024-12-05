function handleComplete(event:Event):void {
  // Assume 'data' is a dynamically typed variable that might contain an array or a single object
  var data:Object = event.target.data; 

  // Incorrect type check that can cause runtime errors
  if (data is Array) {
    trace('Data is an array: ', data);
  } else {
    trace('Data is a single object: ', data);
  }

  // Accessing properties without proper null checks
  // The below line will throw an error if data is null or not an array
  trace('First element of the array: ', data[0].someProperty);
}