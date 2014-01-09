
package pmdr_ua_strings;

sub browser_ua {
	return (
		'Mozilla/5.0 (X11; Linux x86_64; rv:18.0) Gecko/20100101 Firefox/18.0',
		'Mozilla/5.0 (X11; Linux x86_64; rv:26.0) Gecko/20100101 Firefox/26.0',
		'Opera/3.7 (Windows 2000 2.3; )',
		'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Maxthon; .NET CLR 2.0.50727)',
		'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)',
	);
}

sub common_bot_ua {
	return (
		'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',
		'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)',
		'msnbot/1.1 (+http://search.msn.com/msnbot.htm)',
	);
}

sub other_bot_ua {
	return (
		'Baiduspider+(+http://www.baidu.com/search/spider.htm)',
		'Baiduspider-image+(+http://www.baidu.com/search/spider.htm)',
		'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)',
	);
}

1;
