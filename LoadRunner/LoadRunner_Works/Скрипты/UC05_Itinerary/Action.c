Action()
{

	lr_start_transaction("UC05_Itinerary");
	
	homePage();

	login();
	
	lr_think_time(5);

	lr_start_transaction("clickItinerary");
	
	web_reg_find("Text=Itinerary Button",LAST);

	web_url("Itinerary Button", 
		"URL=http://localhost:1080/cgi-bin/welcome.pl?page=itinerary", 
		"TargetFrame=body", 
		"Resource=0", 
		"RecContentType=text/html", 
		"Referer=http://localhost:1080/cgi-bin/nav.pl?page=menu&in=home", 
		"Snapshot=t3.inf", 
		"Mode=HTML", 
		LAST);

	lr_end_transaction("clickItinerary",LR_AUTO);
	
	lr_end_transaction("UC05_Itinerary",LR_AUTO);

	return 0;
}