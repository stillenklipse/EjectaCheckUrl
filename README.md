EjectaCheckUrl
==============

Checks if application is available on iPhone then allow you to open it via the url.


Add the files to the ejecta project in the Source/Ejecta/EJUtils folder.
Make sure they are added to the project to be compiled.


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

You can search URL Schemes here:
http://handleopenurl.com/
