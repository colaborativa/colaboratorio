/* 
 * EmailSpamProtection (jQuery Plugin)
 * Version: 1.0
 * Date: 2010 July
 * Author: Mike Unckel
 * Description and Demo: http://unckel.de/labs/jquery-plugin-email-spam-protection
 *
 * HTML: <span class="email">info [at] domain.com</span>
 * JavaScript: $("body").emailSpamProtection("email");
 *
 */

(function($) {
	$.fn.emailSpamProtection = function(className) {
		return $(this).find("." + className).each(function() {
			var $this = $(this);
			var s = $this.text().replace(" [arroba] ", "@");
			$this.html(s);
			$this.attr("href", "mailto:" + s);
		});
	};
})(jQuery);