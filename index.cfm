 <cfscript>
 //working with a specific RSS feed isn't too difficult.
 //You can do exactly like I did. cfdump the info and the data and see which columns you care about.
 //If you do intend to work with multiple, unknown (at creation) feeds, you may want to consider something like Paragator.
 //That's a ColdFusion component that both multithreads parsing multiple feeds as well as does a bit of normalization as well.
//you can uncomment this cfscript
//rssUrl = "http://www.cfnote.com/rss";
//cffeed( query="entries", source=rssUrl, properties="info", name="cfnote", action="read" );

//writeOutput("Coldfusion News<br />");
//cfoutput( query="entries" ) {

//	writeOutput("<p> <a href=""#rsslink#"">#title#</a> #publisheddate#<br/> #content# </p>");
//}
</cfscript>

<cfset rssUrl = "http://www.cfnote.com/rss">
<cftry>
  <cffeed name="cfnote" action="read" source=#rssUrl# query="entries" properties="info">
    <cfcatch type="database">
      Error:  <cfoutput>#cfcatch.message#</cfoutput>
    </cfcatch>
  <!---<cfdump var="#entries#">--->
  <!---<cfdump var="#info#">  <cfdump var="#entries#">--->
 <!---<cfoutput>#var#<br/> </cfoutput>--->
 <h1>Coldfusion News</h1><br />
</cftry>

 <cfoutput query="entries"> <p> <a href="#rsslink#">#title#</a> #publisheddate#<br/> #content# </p> </cfoutput>
