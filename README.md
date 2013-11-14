EjectaCheckUrl
==============

Checks if application is available on iPhone then allow you to open it via the url.


Example Usage:
```
if( window.ejecta ){
    var OpenUrl = new Ejecta.OpenUrl('fb:');
	if(OpenUrl.isUrlSafeToOpen() == "true"){
	  OpenUrl.openPassedUrl();
	}
}else{
  console.log('facebook not installed')};
}
```
