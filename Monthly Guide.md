# Monthly Guide automation process
Version 1.0
> Location: Google\ Drive/Content/Documentation/Oral\ Histories/Assets/Monthlies

## Steps
1. [Organize Airtable Monthly Guide view](#organize-airtable-monthly-guide-view)
1. [Create monthly directory](#create-monthly-directory)
1. [Pull and process raw thumbnails](#pull-raw-thumbnails)
1. [Prepare branded thumbnails](#prepare-branded-thumbnails)
1. [Compose the guide](#compose-the-guide)

### Organize Airtable Monthly Guide View
1. Determine the publishing schedule for the month ahead.
1. Review the [Airtable Monthly Guide view](https://airtable.com/tblmuERX4RzQUwZM0/viwX8Kkzg2PNLgYfV) to make sure all twelve videos are in place, and that all required data is there, including thumbnails.

### Create Monthly Directory
1. From `Monthlies/editions` directory, run command:

```
mkdir -pv *YYYY_MM*/thumbnails/{branded,raws}
```

### Pull Raw Thumbnails
1. Once the Monthly Guide view is organized, go to the [.raw_thumbnails](https://airtable.com/tblmuERX4RzQUwZM0/viwspdj54Sj1uXV5u) view and order it by Youtube Publish schedule. Export a CSV and save it in the parent directory *YYYY_MM*.
1. Sanitize it.
    1. Replace header line (***ID,Raw Thumbnail***) with empty line.
    1. Move URLs to a new line **after their respective IDs**.
    1. Add a new line after each URL.
    1. Delete unnecessary file names using the regex `(.*?)\(`
    1. Remove the trailing `)`
    1. Prepend `raws/` to each ID. Append `.png` to each ID.
    1. Wrap URLs and IDs in quotes.
    1. Precede each ID with `-o `.
    1. Precede each URL with `url = `.
1. Save the file as urls.txt.
1. Pull all thumbnails from Airtable with `curl -K urls.txt`.

**Expected entries on urls.txt should look like this:**
```

-o "raws/Varney and Omoru_s1_MM_20170527_vai.png"
url = "https://dl.airtable.com/xQFgqYSHTNKVlbHq9DB4_Screen%20Shot%202017-06-01%20at%2013.19.44.png"

```

### Prepare Branded Thumbnails
1. With the organized Airtable Monthly Report view, export a CSV from the [.branded_thumbnails](https://airtable.com/tblmuERX4RzQUwZM0/viwGXSdXjzqjrf2hZ) view and save it in the parent directory *YYYY_MM*.
1. Prepare thumbnail_worksheet.csv
    1. From `/thumbnails`, prepare a list of thumbnails to work with using `ls raws > thumbnail_worksheet.csv`
    1. Add csv header row `@File Path,Language1,Language2,Language3,Language4,Language5,Language6`
    1. Determine your absolute system file path by running `pwd` from `raws` folder.
    1. Prepend each data entry with absolute file path, using `:` instead of `/` for folder structure.
        > For example, `Macintosh HD:Users:FreddieAndrade:Google Drive:Content:Documentation:Oral Histories:Assets:Monthlies:editions:2017_09:thumbnails:raws:Varney And Omoru_s1_MM_20170527_vai.png`.
        > Make sure the path uses the correct USERNAME
    1. Copy languages spoken from exported CSV to thumbnail_worksheet.csv. Each entry should have it's own languages.
        > For example, `Macintosh HD:Users:Amicus:Google Drive:Content:Documentation:Oral Histories:Assets:Thumbnails:raws:Zaeem_s2_M_20160721_hnd+pbu.png,Hindko,Pashto` has two languages, `Hindko` and `Pashto`.
        Note: extended latin characters do not work, which means no accents or fancy things.
1. Data merge
    1. With `thumbnail_worksheet.csv` ready, open `thumbnail-template.indd` in Adobe InDesign
    1. Open `Data Merge` panel from `Window>Utilities>Data Merge`
    1. From panel menu, click `Select Data Source...`.
    1. Select `thumbnail_worksheet.csv`
    1. Preview the merge
    1. Create merged document
1. From merged document, review all pages to make sure
    1. All images look good
    1. All languages are correctly represented
1. Export images as `.jpg` from `File>Export`
1. Rename files so they are all named according to their Oral History ID.
1. Be sure to upload branded thumbnails to Airtable.

### Compose the guide
1. Make sure `frontCover.indd` has the right date and volume number.
1. Prepare `TOC.indd`.
    1. Prepare [TOC spreadsheet](https://docs.google.com/spreadsheets/d/1UbkXvSixUYgl773DdmrKiZj-0EoLR5mkmSY5uonWTgE/edit#gid=0)
    1. Prepare toc.txt
    1. Prepare `TOC.ai`.
    1. Update `TOC.indd` to reflect the correct data.
1. Prepare `singles.indd`.
    1. Prepare the merge document `data.csv`.
    1. Perform a data merge on both `singleA.indd` and `singleB.indd`, selecting `data.csv` as your data source. Name outputs after the edition, `6_17_singleA.indd` for example.
    1. Delete all pages with vertical thumbnails from `6_17_singleA.indd`, and all pages with horizontal thumbnails from `6_17_singleB.indd`.
    1. Join the two documents, placing pages in order. You can move pages between different files within InDesign. Save new file as `6_17_singles.indd`.
    1. From merged document, review all pages to make sure:
        1. All images look good.
        1. All languages, captions, content etc are correctly represented.
    1. Correctly place all Wikitongues logomarks at the end of each description.
    1. Remove Poly elements from pages who's languages are not yet available on the Poly platform. (Double-check by quickly searching Poly.)
    1. Link all Poly elements remaining to their respective documents (if only one example available) or search results (if multiple examples available) on the platform.
1. Make a book.
    1. Add `frontCover.indd`, `TOC.indd`, `6_17_singles.indd` and `backCover.indd` in order.
    1. Preflight
    1. Save as PDF
1. Review
1. Move to Dropbox
1. Name correctly.