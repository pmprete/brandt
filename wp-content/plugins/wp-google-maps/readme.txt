=== WP Google Maps ===
Contributors: WPGMaps
Donate link: http://www.wpgmaps.com
Tags: google maps, maps, map, map markers, google, google map, wp maps, wp google maps, wp google map, easy map, store locator, map plugin, directions, map directions, google map plugin, polygons, polylines, streetview, location, marker, latitude, longitude, map sreetview, map routes
Requires at least: 3.5
Tested up to: 3.9
Stable tag: trunk
License: GPLv2

The easiest to use Google maps plugin! Create custom maps with high quality markers containing locations, categories, descriptions, images and links.

== Description ==

The easiest to use Google maps plugin! Add your customized Google map to your WordPress posts and/or pages quickly and easily with the supplied shortcode. No fuss. No iFrames and super easy to use! Perfect for contact pages, coverage maps and any other use you can think of!

While the free version of WP Google Maps allows you to create a Google map with as many markers as you like, the Pro version allows you to do so much more! 

The [WP Google Maps Pro Version](http://www.wpgmaps.com/purchase-professional-version/) version allows you create custom Google maps with high quality markers containing locations, descriptions, images, categories, links and directions. 

= Lite Version (Free) =
* Super easy to use, no coding required!
* Create as many map markers as you need by simply typing in the address
* Responsive maps
* Edit your map markers with the click of a button
* Drag map markers to an exact location
* Google Maps Streetview supported
* UTF-8 character support
* Map can be included as a widget
* Support for localization
* Choose from four Google maps types: roadmap, terrain, satellite and hybrid
* Define your own width, height and zoom level for your Google Map
* Add animations to your map markers!
* Store locator functionality
* Add Polygons to your Map
* Add Polylines / Routes to your map
* Create a map in less than a 30 seconds!
* No advertising or links
* Latest Google Maps API (V3)

= Professional Edition =
* Create multiple Google maps!
* Add descriptions, links and images to your Google Map markers.
* Add categories to your Google map markers
* Mashup multiple Google maps
* Add different marker icons, or your own icons to make your map really stand out!
* Allow your visitors to get directions to your markers.
* Export/Import your markers to a CSV file for quick editing.
* Link Fusion tables to your Google Maps
* Import KML/KMZ files to your Google Map
* WordPress Network friendly
* Get the [WP Google Maps Professional Edition](http://www.wpgmaps.com/purchase-professional-version/) for only $19.99
* Coming soon: WP Google Map Store Locator add-on!

= Coming Soon =
* Panoramio layer

== Installation ==

1. Once activated, click the "WP Google Maps" link under your settings tabs.
2. Edit the settings to your preference.
3. Test your map on a post or page.


== Frequently Asked Questions ==

= How do I get the WP Google Maps professional edition? =

Simply visit http://www.wpgmaps.com and purchase the WP Google Maps Professional Edition for $19.99

= I've installed the plugin, now what? =

Once installed and activated, a link should appear in your left navigation panel within your WP-ADMIN section. Click on the "WP Google Maps" link and follow the on screen instructions.


== Screenshots ==

1. The "Lite" version of WP Google Maps.
2. The "Pro" version of WP Google Maps.
3. Pro version: Users can get directions to your Google map markers
4. Pro version: Add custom markers to your Google map
5. Lite version: General settings page
6. Pro version: General settings page
7. Pro version: Export/Import your Google map markers
8. Pro version: Advanced Google map options.

== Upgrade Notice ==

= 5.05 =
This is a must for users on IIS. Older WP Google Maps versions will not be compatible.

= 4.14 =
We have updated our Timthumb.php file to the latest version (2.8.5 to 2.8.10) in compliance with new WordPress regulations.

= 4.5 =
Previous versions may cause your blog to slow down. Upgrading to 4.5 will get rid of this bug and increase your page load speed.


== Changelog ==

= 6.0.12 =
* Fixed a google map marker XML file location bug

= 6.0.11 =
* Small bug fix on the WP Google Maps welcome page

= 6.0.10 =
* Tested on WP 3.9
* Fixed a bug that only displayed two map marker categories for the store locator (pro)
* Added the option to select which Google Map API version you would like to use. There were issues when using Google Map API v3.15 (lines were created on the map for no reason. The default is now Google Map API V3.14)

= 6.0.9 =
* Maps now automatically work in Tabs without having to add any code
* Added a "zoom level" slider to the Google map settings
* Added a check for GoDaddy Wordpress hosting and the APC object cache due to the issues that arise while using it
* Fixed a polyline bug
* Added "stroke opacity" options to polygons
* Added a warning when users want to use % for the map height

= 6.0.8 =
* Fixed a Mac Firefox style issue with the WP Google Maps Store Locator
* Fixed a function error in the polyline functions file

= 6.0.7 =
* Upgrading of plugin is now handled correctly

= 6.0.6 =
* Multisite bug fixes
* XML marker file bug fixes (thank you Endymion00)

= 6.0.5 =
* Markers are now stored in the uploads folder
* Small bug fixes

= 6.0.4 =
* Performance update

= 6.0.3 =
* Small bug fix

= 6.0.2 =
* Style bug fix

= 6.0.1 =
* Small bug fix

= 6.0.0 =
* Fixed a map width bug with the datatables layout. Now falls in line with the map width.
* Added more options to the map settings page
* Fixed a bug that forced a new geocode on every marker edit, even if the address wasnt changed
* Updated TimThumb from 2.8.11 to 2.8.13
* You can now choose for your map InfoWindows to open from mouse click or hover
* Better error handling when the map cannot show due to conflicts or JS errors
* Fixed the bug that caused high memory usage
* Major bug fixes

= 5.24 =
* Bug fix - The map style changed the style of your theme.

= 5.23 =
* Add animations to your map markers (lite)
* Choose to have the infowindow open by default (lite)
* Add the bicycle and traffic layer to your map (lite)
* Substantial coding improvements and bug fixes

= 5.22 =
* Fixed the marker sort order bug

= 5.21 =
* Fixed a bug that if clicking the "add maker" button produced an error, the "add marker" button would disappear.

= 5.20 =
* Categories can now be hidden from the marker list
* German translation added thanks to Matteo Ender

= 5.19 =
* Fixed a styling bug with Firefox
* Fixed the bug that caused all markers to be lost upon upgrading

= 5.18 =
* Added improved styling to the address in the map infowindow

= 5.17 =
* Fixed update bug

= 5.16 =
* Plugin now checks to see if the Google Maps API is already loaded before trying to load it again
* Fixed some SSL bugs

= 5.15 =
* Added marker category functionality
* Added Google Map Mashup functionality
* Fixed small bugs
* Added backwards compatibility for older versions of WordPress
* Replaced deprecated WordPress function calls
* Added Spanish translation - Thank you Fernando!

= 5.14 =
* The map plugin now uses the new media manager
* Fixed some styling conflicts
* Added missing strings to localization
* Updated to the latest Timthumb version

= 5.13 =
* Fixed a small bug

= 5.12 =
* Removed deprecated code

= 5.11 =
* Added SSL bug fixes
* Fixed a bug that wasnt allowing users to edit the exact location

For more, please view our website.