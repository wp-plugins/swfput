��    [      �     �      �     �     �  #         $  "   7     Z     c     l     �     �  
   �     �  *   �     	     ,	  %   F	     l	     �	     �	  %   �	     �	  !   �	     
  #   ;
     _
     o
  !   �
     �
     �
     �
     �
     �
          $     <  !   M  "   o  
   �     �     �     �     �  &   �       .        C     S     j  *   ~  "   �     �     �     �          $     9     L     i     w     |  !   �     �     �     �     �               ,     G  �  b  �   (  �    �  �  u  \    �     �  %        .  '   G     o     �     �     �     �     �     �          '  (   ;     d  A  i     �      �   #   �      !  "   !     <!     E!     N!     m!     �!  
   �!     �!  *   �!     �!     "  %   ("     N"     k"     �"  %   �"     �"  !   �"     �"  #   #     A#     Q#  !   m#     �#     �#     �#     �#     �#     �#     $     $  !   /$  "   Q$  
   t$     $     �$     �$     �$  &   �$     �$  .   �$     %%     5%     L%  *   `%  "   �%     �%     �%     �%     �%     &     &     .&     K&     Y&     ^&  !   l&     �&     �&     �&     �&     �&     �&     '     )'  �  D'  �   
)  �  �)  �  �,  o  >1    �4     �6  %   �6     
7  '   #7     K7     d7     7     �7     �7     �7     �7     �7     8  (   8     @8     =       V                 Z           R   S   1   0   [             :   N   *      +           F                     '   X   	   !   >          M          3   D                  Y   K   "   P   Q   <   J       (       %      C       $          -   7   L       )   B          
      &   ?   I      8                .      H   A   5   9      2   E       6           T              @              W          4   ,      O                                U   G   #       /   ;        [A/V content%s disabled]  /^((he(ck|ll))?n(o!?)?)?$/i /^(sc?h[yi]te?)?y(e((s|ah)!?)?)?$/i Allow full screen: Auto aspect (e.g. 360x240 to 4:3): Behavior Caption: Configuration of SWFPut Plugin Control bar Height (20-50): Delete current in editor Dimensions Display and Runtime Settings. Display aspect (e.g. 4:3, precludes Auto): Dynamic SWF generation: Enable shortcode in posts Enable shortcode or attachment search Enable shortcodes in widgets Enable the included widget Enable widget or shortcode Enable/disable flash video placement: Fill form from editor Flash video for your widget areas Flash video in posts options: Flash video in widget area options: General Options General SWF plugin options: Go back to top (General section). Go forward to save button. Height (default %u): Height: Hide Hide and disable control bar: Hide control bar initially: Initial volume (0-100): Install options: Load image ID from media library: Load image from uploads directory: Loop play: Media Medium is audio (e.g. *.mp3): Medium is audio: Options here: Permanently delete settings (clean db) Pixel Width: Pixel aspect (e.g. 8:9, precluded by Display): Place in posts: Place in widget areas: Place new in editor Play on load (else waits for play button): Playpath (rtmp) or co-video (mp3): Playpath (rtmp): Plugin Install Settings Replace current in editor Reset default values SWFPut Configuration SWFPut Flash Video SWFPut Flash Video Shortcode SWFPut Plugin Save Save Settings Search attachment links in posts: Search attachments in posts Select ID from media library: Settings Settings updated successfully Show Show verbose descriptions Show verbose descriptions: Some settings (%d) updated The PHP+Ming option selects whether
				the Flash player program is generated with PHP
				and the Ming extension for each request.
				When this option is not selected, then
				a compiled binary player is used.
				This option is only displayed if the Ming
				PHP extension is installed and loaded; if you
				are reading this then Ming has been found to
				be loaded.
				Note that this option will increase the load on the
				server of your site. The verbose option selects whether
			verbose descriptions
			should be displayed with the various settings
			sections. The long descriptions, of which 
			this paragraph is an example,
			will not be shown if the option is not
			selected. These options enable or completely disable
			placing video in posts or widgets. If the placement
			of video must be switched on or off, for either
			posts (and pages) or widgets
			or both, these are the options to use.
			</p><p>
			When the plugin shortcode is disabled the flash
			video player that would have been displayed is
			replaced by a notice with the form
			"[A/V content &lt;caption&gt; disabled],"
			where "&lt;caption&gt;"
			is any caption that was included with the shortcode,
			or empty if there was no caption.
			</p><p>
			Note that in the two following sections,
			"Video In Posts" and "Video In Widget Areas,"
			the options are effective only if enabled here. These options select 
			how flash video (or audio) may be placed in posts or pages.
			Use shortcodes for any new posts (and preferably
			for existing posts) that should include
			the flash media player of this plugin.
			Shortcodes are an efficient method provided by the
			<em>WordPress</em> API. When shortcodes are enabled,
			a form for parameters will appear in the post (and page)
			editing pages (probably near the bottom of the page,
			but it can be dragged nearer to the editor).
			</p><p>
			The "Search attachment"
			option might help with some existing posts if
			you already have attached media (i.e., the posts contain
			attachment_id=<em>N</em> links).
			The attachment number is used to find the associated
			URL, and if the filename extension suggests that the
			medium is a suitable type, the flash player code
			is put in line with the URL; the original attachment_id
			URL is placed after the flash player.
			Use of this option is discouraged
			because it requires additional processing of each
			line of each post (or page) displayed,
			and so it increases server load. User parameters
			are not available for this method. These options select 
			how flash video (or audio) may be placed in widget areas.
			The first option selects use of the included multi-widget.
			This widget is configured in the
			Appearance-&gt;Widgets page, just
			like the widgets included with <em>WordPress</em>, and
			the widget setup interface
			includes a form to set parameters.
			</p><p>
			The second option "shortcodes in widgets"
			selects shortcode processing in other widget output, as for
			posts. This is probably only useful with the
			<em>WordPress</em> Text widget or a similar widget. These
			shortcodes must be entered by hand, and therefore this
			option requires a knowledge of the shortcode and
			parameters used by this plugin.
			(If necessary, a temporary shortcode
			can be made within a post using the provided form, and
			then cut and
			pasted into the widget text, on a line of its own.) This section includes optional
			features for plugin install or uninstall. Presently
			the only option is whether to remove the plugin's
			set of options from the database when
			the plugin is deleted.
			There is probably no reason to leave the options in
			place if you intend to delete the plugin permanently;
			you may simply deactivate the plugin if
			you want it off temporarily.
			If you intend to delete and then reinstall the plugin,
			possibly for a new version or update, then keeping the
			options might be helpful. Url from uploads directory: Url of initial image file (optional): Url or media library ID: Use SWF script if PHP+Ming is available Use shortcodes in posts: Use shortcodes in widgets: Use the included widget: Video In Posts Video In Widget Areas Video Placement Options When the plugin is uninstalled: Widget title: Width (default %u): You have insufficient access capability. none Project-Id-Version: swfput 1.0.3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-08-20 17:29-0400
PO-Revision-Date: 2013-08-20 17:29 EDT
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
Language: en_US
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
  [A/V content%s disabled]  /^((he(ck|ll))?n(o!?)?)?$/i /^(sc?h[yi]te?)?y(e((s|ah)!?)?)?$/i Allow full screen: Auto aspect (e.g. 360x240 to 4:3): Behavior Caption: Configuration of SWFPut Plugin Control bar Height (20-50): Delete current in editor Dimensions Display and Runtime Settings. Display aspect (e.g. 4:3, precludes Auto): Dynamic SWF generation: Enable shortcode in posts Enable shortcode or attachment search Enable shortcodes in widgets Enable the included widget Enable widget or shortcode Enable/disable flash video placement: Fill form from editor Flash video for your widget areas Flash video in posts options: Flash video in widget area options: General Options General SWF plugin options: Go back to top (General section). Go forward to save button. Height (default %u): Height: Hide Hide and disable control bar: Hide control bar initially: Initial volume (0-100): Install options: Load image ID from media library: Load image from uploads directory: Loop play: Media Medium is audio (e.g. *.mp3): Medium is audio: Options here: Permanently delete settings (clean db) Pixel Width: Pixel aspect (e.g. 8:9, precluded by Display): Place in posts: Place in widget areas: Place new in editor Play on load (else waits for play button): Playpath (rtmp) or co-video (mp3): Playpath (rtmp): Plugin Install Settings Replace current in editor Reset default values SWFPut Configuration SWFPut Flash Video SWFPut Flash Video Shortcode SWFPut Plugin Save Save Settings Search attachment links in posts: Search attachments in posts Select ID from media library: Settings Settings updated successfully Show Show verbose descriptions Show verbose descriptions: Some settings (%d) updated The PHP+Ming option selects whether
				the Flash player program is generated with PHP
				and the Ming extension for each request.
				When this option is not selected, then
				a compiled binary player is used.
				This option is only displayed if the Ming
				PHP extension is installed and loaded; if you
				are reading this then Ming has been found to
				be loaded.
				Note that this option will increase the load on the
				server of your site. The verbose option selects whether
			verbose descriptions
			should be displayed with the various settings
			sections. The long descriptions, of which 
			this paragraph is an example,
			will not be shown if the option is not
			selected. These options enable or completely disable
			placing video in posts or widgets. If the placement
			of video must be switched on or off, for either
			posts (and pages) or widgets
			or both, these are the options to use.
			</p><p>
			When the plugin shortcode is disabled the flash
			video player that would have been displayed is
			replaced by a notice with the form
			"[A/V content &lt;caption&gt; disabled],"
			where "&lt;caption&gt;"
			is any caption that was included with the shortcode,
			or empty if there was no caption.
			</p><p>
			Note that in the two following sections,
			"Video In Posts" and "Video In Widget Areas,"
			the options are effective only if enabled here. These options select 
			how flash video (or audio) may be placed in posts or pages.
			Use shortcodes for any new posts (and preferably
			for existing posts) that should include
			the flash media player of this plugin.
			Shortcodes are an efficient method provided by the
			<em>WordPress</em> API. When shortcodes are enabled,
			a form for parameters will appear in the post (and page)
			editing pages (probably near the bottom of the page,
			but it can be dragged nearer to the editor).
			</p><p>
			The "Search attachment"
			option might help with some existing posts if
			you already have attached media (i.e., the posts contain
			attachment_id=<em>N</em> links).
			The attachment number is used to find the associated
			URL, and if the filename extension suggests that the
			medium is a suitable type, the flash player code
			is put in line with the URL; the original attachment_id
			URL is placed after the flash player.
			Use of this option is discouraged
			because it requires additional processing of each
			line of each post (or page) displayed,
			and so it increases server load. User parameters
			are not available for this method. These options select 
			how flash video (or audio) may be placed in widget areas.
			The first option selects use of the included widget.
			This widget is configured in the
			Appearance-&gt;Widgets page, just
			like the widgets included with <em>WordPress</em>, and
			the widget setup interface
			includes a form to set parameters.
			</p><p>
			The second option "shortcodes in widgets"
			selects shortcode processing in other widget output, as for
			posts. This is probably only useful with the
			<em>WordPress</em> Text widget or a similar widget. These
			shortcodes must be entered by hand, and therefore this
			option requires a knowledge of the shortcode and
			parameters used by this plugin.
			(If necessary, a temporary shortcode
			can be made within a post using the provided form, and
			then cut and
			pasted into the widget text, on a line of its own.) This section includes optional
			features for plugin install or uninstall. Presently
			the only option is whether to remove the plugin's
			set of options from the database when
			the plugin is deleted.
			There is probably no reason to leave the options in
			place if you intend to delete the plugin permanently;
			you may simply deactivate the plugin if
			you want it off temporarily.
			If you intend to delete and then reinstall the plugin,
			possibly for a new version or update, then keeping the
			options might be helpful. Url from uploads directory: Url of initial image file (optional): Url or media library ID: Use SWF script if PHP+Ming is available Use shortcodes in posts: Use shortcodes in widgets: Use the included widget: Video In Posts Video In Widget Areas Video Placement Options When the plugin is uninstalled: Widget title: Width (default %u): You have insufficient access capability. none 