# Data Dictionary
This is a complete outline of how Wikitongues manages data across the board.

## TOC
1. [Oral Histories (48 Headers)](#oral-histories)
2. [CRM (33 Headers)](#crm)
3. [Content Resources (12 Headers)](#content-resources)
4. [Italki Advertising (5 Headers)](#italki-advertising)
5. [🔒 Languages (51 Headers)](#languages)
6. [🔒 Nations (44 Headers)](#nations)
7. [🔒 Territories (32 Headers)](#territories)
8. [🔒 Continents (10 Headers)](#continents)
9. [🔒 Licenses (7 Headers)](#licenses)
10. [🔒 Institutions (6 Headers)](#institutions)
11. [🔒 Writing Systems (6 Headers)](#writing-systems)
12. [🔒 Language Status (5 Headers)](#language-status)

## Tables
All the data below is managed on Airtable. For access to any of the fields, or for clarifying questions, please reach out to maintainer.
> **Note:** Tables with 🔒 in their names are system tables and do not often receive new rows. They are used for enriching other tables with specific contexts. Similarly, headers with dotnames (`.ID-Languages`) are system headers and not for use or editing. Those columns are usually hidden.

### Oral Histories
The Oral Histories table is where all of Wikitongues Oral History content is accounted for.

Headers (48)|Description|Type
--|--|--
IDV2|`CONCATENATE({.speakerNamesSanitized}, "_", DATETIME_FORMAT({Date added}, "YYYYMMDD"), "_", {.ID-languages})` | Formula
Speakers| | Reference to [CRM](#crm) table
Gender| | String
Source| | Reference to [CRM](#crm) table
Date Added| | Datetime
Raw Thumbnail| | Attachment
Branded Thumbnail| | Attachment
Languages by ISO Code| | Reference to [🔒 Languages](#languages) table
Captions by ISO Code| | Reference to [🔒 Languages](#languages) table
Languages Used| | Lookup in Languages table
Alternate Name| | String
Speaker Notes| | Long text
Intake notes| | Multiple Select
Video Nation| | Reference to [🔒 Nations](#nations) table
Youtube Publish Schedule| | Datetime
Public (Youtube)| | Single select
Licenses| | Reference to [🔒 Licenses](#licenses) table
Publicity Clause| | Checkbox
Transcribed| | Checkbox
Transcription| | Long text
Translation| | Long text
Notes| | Long text
italki call to action| | Lookup in Languages table
italki active language| | Lookup in Languages table
italki video has link| | Checkbox
Publish order| | Integer
Secondary publish| | Multiple select
Published on (Facebook)| | Datetime
Facebook URL| | URL
Languages per video| | Count
Youtube Banners Updated| | Checkbox
Youtube ID| | String
Youtube URL| | Formula
Demographics| | Lookup in Languages table
Genealogy| | Lookup in Languages table
Top level genealogy per language| | String
Given language name| | String
Video description| | Long text
Continent| | Lookup in Continents table
.ID-languages| | Rollup
.speakerNames| | Rollup
.speakerNamesSanitized| | Formula
.self?| | Formula
.IDV1| | Formula
Record Created At| | Datetime
Video Territory| | Reference to [🔒 Territories](#territories) table
Transcript File| | Attachment
Caption File Link| | URL

### CRM
This table has all of the data we have about our contributors around the world. Any person who's submitted an oral history to us, sat for an oral history for us or otherwise engaged in volunteering for us is noted in this table.

Headers (33)|Description|Type
--|--|--
ID|`SUBSTITUTE({First Name}," ","")&"_"&SUBSTITUTE({Last Name}," ","")& "_"& IF({Date added},DATETIME_FORMAT({Date added}, "YYYYMMDD"),"")` | Formula
Last Name| | String
Country| | Reference to [🔒 Nations](#nations) table
Languages (Nationally Available)| | Lookup in Nations table
Video count| | Count
City or Town| | String
Subdivision| | String
Videos Recorded| | Reference to [Oral Histories](#oral-histories) table
Territory| | Reference to [🔒 Territories](#territories) table
Birthday| | Datetime
Preferred Greeting| | String
Greeting Language| | Reference to [🔒 Languages](#languages) table
Email| | Email
Wikitongues Email| | Email
Timezone| | String
Twitter Handle| | String
Plans| | Long text
Social Media| | Multiple select
Territorially Available Languages| | Lookup in Territories table
Phone number| | Phone number
Languages Spoken| | Reference to [🔒 Languages](#languages) table
Role| | Single select
Featured in| | Reference to [Oral Histories](#oral-histories) table
First Name| | String
Date added| | Datetime
Gender| | Multiple select
Notes| | Long text
Languages| | Reference to [🔒 Languages](#languages) table
Continents| | Lookup in Continents table
List "Medium Subscriber"| | Email
List "Monthly Roundup"| | Email
Username| | String
Community Leader?| | Checkbox

### Content Resources

Headers (12)|Description|Type
--|--|--
Name| | String
Languages| | Reference to [🔒 Languages](#languages) Table
Official Language Name| | Lookup in Languages table
Contact Languages| | String
Email| | Email
Postal Address| | Long text
URL| | URL
Phone number| | Phone number
Alternate Name| | String
Description| | Long text
Nations| | Reference to [🔒 Nations](#nations) table
Type| | Single select

### Italki Advertisin
This table supported a partnershit with the company italki.

Headers (5)|Description|Type
--|--|--
italki language| | String
Wikitongues Equivalent| | Reference to [🔒 Languages](#languages) table
Video Link| | Lookup in Languages table
Langugae Casual Name| | Lookup in Languages table
Notes| | Long text

### 🔒 Languages
This table has all of the data we have about the languages of the world. Data was collected mostly from Ethnologue at a single point in time in 2014.

Headers (51)|Description|Type
--|--|--
ISO 639-3| | String
Language Names| | String
Official Name| | String
Alternate Names| | String
Dialects| | Long text
Writing System| | Reference to [🔒 Writing System](#writing-system) table
Territories| | Reference to [🔒 Territories](#territories) table
Nation of Origin| | Reference to [🔒 Nations](#nations) table
# of videos| | Count
Speakers Recorded| | Reference to [CRM](#crm) table
Language Status Raw| | Single Select
Language Status Notes| | String
Genealogy| | String
Demographics| | Long text
Language Use| | Long text
Language Development| | Long text
Typology| | String
Other Comments| | Long text
Language Description| | Long text
Principal in| | Reference to [🔒 Nations](#nations) table
Continent of Origin| | Lookup in Nations table
Video Url| | Lookup in CRM table
Public| | Lookup in CRM table
Language Resources| | String
Language Resources URL| | URL
Ethnologue Language URL| | URL
ISO URL| | URL
Poly Early Access| | String
WeeklyTongue Post language| | Lookup in Nations table (BROKEN)
WeeklyTongue Article language| | String
WeeklyTongue Subject Posts| | String
Italki language names| | Reference to [Italki Advertising](#italki-advertising) table
italki link| | Formula
italki active links| | Checkbox
italki call to action| | Formula
Volunteer languages| | Reference to [CRM](#crm) table
Institutions| | Reference to [🔒 Institutions](#institutions) table
Nationally Official In| | Reference to [🔒 Nations](#nations) table
Regionally Recognized In| | Reference to [🔒 Nations](#nations) table
Language Lead| | Reference to [CRM](#crm) table
Dictionary| | URL
Language Status| | Reference to [🔒 Language Status](#language-status) table
Content resources| | Reference to [Content Resources](#content-resources) table
UHRI| | Checkbox
🔒Writing Systems| | String
Geographic Notes| | Long text
Video Source| | Lookup in CRM table
Recording Date(s)| | Lookup in CRM table
Language Contact| | Reference to [CRM](#crm) table
Oral Histories| | Reference to [Oral Histories](#oral-histories) table
Number of names| | Formula

### 🔒 Nations
Geographic information is key to understanding the distribution of language communities across the world. This a system table backs that.

Headers (44)|Description|Type
--|--|--
Polities| | String
Volunteers| | Reference to [CRM](#crm) table
Languages| | Reference to [🔒 Languages](#languages) table
Language Count| | Count
Principal Languages| | Reference to [🔒 Languages](#languages) table
Immigrant Languages| | Long text
Duplicate Immigrant Languages| | String
Geographic Note| | Long text
Nationally Official Languages| | Reference to [🔒 Languages](#languages) table
Nationally Official Names| | Lookup in Languages table
Nationally Official Data| | Long text
Regionally Official Languages| | Reference to [🔒 Languages](#languages) table
Regionally Official Names| | Lookup in Languages table
Regionally Official Data| | Long text
Recognized Languages| | Long text
Territories| | Reference to [🔒 Territories](#territories) table
Territory Count| | Count
Continent| | Reference to [🔒 Continent](#Continent) table
Language Count Details| | Long text
Land (km^2)| | Integer
Water (km^2)| | Integer
Total Area (km^2)| | Formula
% Water| | Formula
Speakers per Language (Average)| | Formula
Population| | Integer
World Population Percentage| | Formula
Population Source| | String
Population Source Date| | Datetime
Deaf Population (Highest Estimates)| | Integer
% Deaf| | Formula
Deaf Institutions| | String
Literacy Rate| | String
Official Name| | String
General References| | Long text
Country Ethnologue URL| | URL
Videos Recorded| | Reference to [Oral Histories](#oral-histories) table
Corporate Sponsorship| | String
Content resources| | Reference to [Content Resources](#content-resources) table
Poly Early Access| | String
ISO 3166| | String
Latitude| | String
Longitude| | String
Coordinates| | Formula
Geocode| | String

### 🔒 Territories
Geographic information is key to understanding the distribution of language communities across the world. This a system table backs that.

Headers (32)|Description|Type
--|--|--
Polities| | Formula
Name| | String
Languages| | Reference to [🔒 Languages](#languages) table
Language Count| | Count
Type| | Multiple select
Sovereignty| | Reference to [🔒 Nations](#nations) table
ID| | Lookup in Sovereignty table
Land (km^2)| | Integer
Water (km^2)| | Integer
Total Area (km^2)| | Formula
% Water| | Formula
Geographic Note| | String
Continent| | Reference to [🔒 Continent](#Continent) table
Regionally official| | Long text
Principal Languages| | String
Immigrant Languages| | String
Duplicate Immigrant Languages| | String
Volunteers| | Reference to [CRM](#crm) table
Language Count Details| | String
Speakers per Language (Average)| | Formula
Population| | Integer
World Population Percentage| | Formula
Population Source| | String
Deaf Population (Highest Estimates)| | Integer
% Deaf| | Formula
Deaf Institutions| | String
Literacy Rate| | String
Official Name| | String
General References| | Long text
Country Ethnologue URL| | URL
Poly Early Access| | String
Oral Histories| | Reference to [Oral Histories](#oral-histories) table

### 🔒 Continents
Geographic information is key to understanding the distribution of language communities across the world. This a system table backs that.

Headers (10)|Description|Type
--|--|--
Name| | String
Nation Count| | Count
Nation Language Count| | Rollup
Languages per Nation| | Formula
Territory Count| | Count
Territory Language Count| | Rollup
Nations| | Reference to [🔒 Nations](#nations) table
Territories| | Reference to [🔒 Territories](#territories) table
Corporate Sponsorship| | String
CRM| | String

### 🔒 License
We release our content on a given set of licenses. This table outlines basic details about each one.

Headers (7)|Description|Type
--|--|--
Name| | String
Full Name| | String
Full Text| | Long text
Source| | URL
Type| | Single select
Oral Histories| | Reference to [Oral Histories](#oral-histories) table
Distribution| | Count

### 🔒 Institution
Institutions are formal organizations that have a steak in a given language community. Access to an institution is a good measure of access to a given language community.

Headers (6)|Description|Type
--|--|--
Name| | String
ISO| | Reference to [🔒 Languages](#languages) table
Speakers Recorded| | Lookup in Languages table
Type| | Single select
URL| | URL
Wikipedia| | URL


### 🔒 Writing System
Understanding what writing systems a language uses helps us understand how we can reach speakers.

Headers (6)|Description|Type
--|--|--
Name| | String
Languages| | Reference to [🔒 Languages](#languages) table
Count| | Count
UHRI| | Lookup in Languages table
Speakers recorded| | Lookup in Languages table
# videos| | Rollup

### 🔒 Language Status
Language status is a measure of the vitality of a language. We use it to analyze cost of finding speakers of a given language.

Headers (5)|Description|Type
--|--|--
ID| | Autonumber
Classification| | String
Name| | String
• Languages| | Reference to [🔒 Languages](#languages) table
Count| | Count