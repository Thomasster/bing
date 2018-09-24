#
#	Last modified:	2016.08.28
#
#	powershell -ExecutionPolicy ByPass -File bing.ps1

CD $home\Pictures

$bing = New-Object System.Xml.XmlDocument
$bing.Load("http://www.bing.com/HPImageArchive.aspx?format=xml&idx=0&n=1&mkt=%s")
$url = $bing.images.image.urlbase
$file = $bing.images.image.startdate + '.jpg'
$bing2 = 'http://bing.com' + $url + '_1920x1080.jpg'

(New-Object System.Net.WebClient).DownloadFile($bing2,$file)