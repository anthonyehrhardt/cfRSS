 <cfscript>
 //working with a specific RSS feed isn't too difficult.
 //You can do exactly like I did. cfdump the info and the data and see which columns you care about.
 //If you do intend to work with multiple, unknown (at creation) feeds, you may want to consider something like Paragator.
 //That's a ColdFusion component I created that both multithreads parsing multiple feeds as well as does a bit of normalization as well.
</cfscript>
<cfset rssUrl = "http://www.cfnote.com/rss">
<cffeed name="cfnote" action="read" source=#rssUrl# query="entries" properties="info">
  <!---<cfdump var="#entries#">--->
  <!---<cfdump var="#info#">  <cfdump var="#entries#">--->
 <!---<cfoutput>#var#<br/> </cfoutput>--->
 Coldfusion News<br />
 <cfoutput query="entries"> <p> <a href="#rsslink#">#title#</a> #publisheddate#<br/> #content# </p> </cfoutput>
