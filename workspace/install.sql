
-- *** STRUCTURE:`tbl_fields_author` ***
DROP TABLE IF EXISTS`tbl_fields_author`;
CREATE TABLE`tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_author` ***

-- *** STRUCTURE:`tbl_fields_checkbox` ***
DROP TABLE IF EXISTS`tbl_fields_checkbox`;
CREATE TABLE`tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_checkbox` ***
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (11, 3, 'on', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (3, 8, 'on', NULL);

-- *** STRUCTURE:`tbl_fields_date` ***
DROP TABLE IF EXISTS`tbl_fields_date`;
CREATE TABLE`tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calendar` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `time` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_date` ***

-- *** STRUCTURE:`tbl_fields_input` ***
DROP TABLE IF EXISTS`tbl_fields_input`;
CREATE TABLE`tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_input` ***
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (3, 6, NULL);

-- *** STRUCTURE:`tbl_fields_select` ***
DROP TABLE IF EXISTS`tbl_fields_select`;
CREATE TABLE`tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_select` ***

-- *** STRUCTURE:`tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS`tbl_fields_selectbox_link`;
CREATE TABLE`tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_selectbox_link` ***
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (2, 5, 'no', 'no', 9, 20);

-- *** STRUCTURE:`tbl_fields_taglist` ***
DROP TABLE IF EXISTS`tbl_fields_taglist`;
CREATE TABLE`tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_taglist` ***

-- *** STRUCTURE:`tbl_fields_textarea` ***
DROP TABLE IF EXISTS`tbl_fields_textarea`;
CREATE TABLE`tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_textarea` ***
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (12, 2, 'commonmarkjson', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (13, 4, 'commonmarkjson', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (4, 7, 'commonmark', 15);

-- *** STRUCTURE:`tbl_fields_textbox` ***
DROP TABLE IF EXISTS`tbl_fields_textbox`;
CREATE TABLE`tbl_fields_textbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `column_length` int(11) unsigned DEFAULT '75',
  `text_size` enum('single','small','medium','large','huge') COLLATE utf8_unicode_ci DEFAULT 'medium',
  `text_formatter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_length` int(11) unsigned DEFAULT '0',
  `text_cdata` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `text_handle` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_textbox` ***
INSERT INTO`tbl_fields_textbox` (`id`, `field_id`, `column_length`, `text_size`, `text_formatter`, `text_validator`, `text_length`, `text_cdata`, `text_handle`) VALUES (6, 9, 75, 'single', 'jsontitle', NULL, 0, 'no', 'yes');

-- *** STRUCTURE:`tbl_fields_uniqueupload` ***
DROP TABLE IF EXISTS`tbl_fields_uniqueupload`;
CREATE TABLE`tbl_fields_uniqueupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_uniqueupload` ***

-- *** STRUCTURE:`tbl_fields_upload` ***
DROP TABLE IF EXISTS`tbl_fields_upload`;
CREATE TABLE`tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_upload` ***

-- *** STRUCTURE:`tbl_entries_data_2` ***
DROP TABLE IF EXISTS`tbl_entries_data_2`;
CREATE TABLE`tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_2` ***
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (90, 3, '### Sections\r\nCreate your sections as usual. Perhaps you already tried to output json out of symphony. Xsl templating is tricky and/or string operations are heavy. So I prefered to encode in json when entry is saved, you will find 3 text formatters for this use in this ensemble:\r\n1. CommonMark Json, inside CommonMark extension is a custom text formatter that will turn markdown containing html tags into a json string.\r\n2. Json Encode, escape a string to be a json string.\r\n3. Json Encode Title, will capitalize as a title should be and format a json string\r\n\r\n### Datasources\r\nDatasources are made as usual.\r\n\r\n### Pages\r\nIndex page don\'t need any datasource or event and look at the markup, it s almost nothing, except the weird < app > </ app > tag, used to mount the vue.\r\n\r\n404 goes to index, error pages are managed by vue in front-end.\r\n\r\nThe API endpoints are json pages. For developpement purpose you have to set their type to \'alloworigins\' to allow Cross Origins Ressource Sharing, because webpack server and your apache virtual machine won\'t be on the same domain. But once your are ready you can remove this type before deployment.\r\n\r\nYou can create post endpoints for events.\r\n\r\n### Templating\r\nSymphony output only json, check how page templates are made and note that data from special text formatters doesn\'t need quotes.', '\"\\u003Ch3\\u003ESections\\u003C\\/h3\\u003E\\n\\u003Cp\\u003ECreate your sections as usual. Perhaps you already tried to output json out of symphony. Xsl templating is tricky and\\/or string operations are heavy. So I prefered to encode in json when entry is saved, you will find 3 text formatters for this use in this ensemble:\\u003C\\/p\\u003E\\n\\u003Col\\u003E\\n\\u003Cli\\u003ECommonMark Json, inside CommonMark extension is a custom text formatter that will turn markdown containing html tags into a json string.\\u003C\\/li\\u003E\\n\\u003Cli\\u003EJson Encode, escape a string to be a json string.\\u003C\\/li\\u003E\\n\\u003Cli\\u003EJson Encode Title, will capitalize as a title should be and format a json string\\u003C\\/li\\u003E\\n\\u003C\\/ol\\u003E\\n\\u003Ch3\\u003EDatasources\\u003C\\/h3\\u003E\\n\\u003Cp\\u003EDatasources are made as usual.\\u003C\\/p\\u003E\\n\\u003Ch3\\u003EPages\\u003C\\/h3\\u003E\\n\\u003Cp\\u003EIndex page don\'t need any datasource or event and look at the markup, it s almost nothing, except the weird &lt; app &gt; &lt;\\/ app &gt; tag, used to mount the vue.\\u003C\\/p\\u003E\\n\\u003Cp\\u003E404 goes to index, error pages are managed by vue in front-end.\\u003C\\/p\\u003E\\n\\u003Cp\\u003EThe API endpoints are json pages. For developpement purpose you have to set their type to \'alloworigins\' to allow Cross Origins Ressource Sharing, because webpack server and your apache virtual machine won\'t be on the same domain. But once your are ready you can remove this type before deployment.\\u003C\\/p\\u003E\\n\\u003Cp\\u003EYou can create post endpoints for events.\\u003C\\/p\\u003E\\n\\u003Ch3\\u003ETemplating\\u003C\\/h3\\u003E\\n\\u003Cp\\u003ESymphony output only json, check how page templates are made and note that data from special text formatters doesn\'t need quotes.\\u003C\\/p\\u003E\"');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (89, 1, 'This ensemble is a very basic Single Page Application made with [vue](http://vuejs.org/). Symphony CMS generates a json API, no html markup. You also can use the awesome JIT to deliver dynamic images. This could be a starting point to have the same codebase for a web app and an hybrid app made with phonegap.\r\n\r\nYour server doesn\'t need to generate any html markup, all the user interface is distributed by static assets: a css and a js file compiled with [webpack](https://webpack.github.io/). Extensive string operations are delegated to the client (ex in this ensemble: date format). The symphony backend is only used to retrieve data, and deliver dynamic assets.\r\n\r\nOn the front end side, your visitors won\'t reaload any page and the UI is available anytime after the initial load, so they have a better browsing experience with a fast website.', '\"\\u003Cp\\u003EThis ensemble is a very basic Single Page Application made with \\u003Ca href=\\u0022http:\\/\\/vuejs.org\\/\\u0022\\u003Evue\\u003C\\/a\\u003E. Symphony CMS generates a json API, no html markup. You also can use the awesome JIT to deliver dynamic images. This could be a starting point to have the same codebase for a web app and an hybrid app made with phonegap.\\u003C\\/p\\u003E\\n\\u003Cp\\u003EYour server doesn\'t need to generate any html markup, all the user interface is distributed by static assets: a css and a js file compiled with \\u003Ca href=\\u0022https:\\/\\/webpack.github.io\\/\\u0022\\u003Ewebpack\\u003C\\/a\\u003E. Extensive string operations are delegated to the client (ex in this ensemble: date format). The symphony backend is only used to retrieve data, and deliver dynamic assets.\\u003C\\/p\\u003E\\n\\u003Cp\\u003EOn the front end side, your visitors won\'t reaload any page and the UI is available anytime after the initial load, so they have a better browsing experience with a fast website.\\u003C\\/p\\u003E\"');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (87, 2, '### Requirements\r\nThe following softwares are needed only for front end dev, not for production\r\n1. [nodejs](https://nodejs.org/en/)\r\n2. [webpack](http://webpack.github.io/docs/tutorials/getting-started/)\r\n3. Text editor ([Atom](https://atom.io/) is great with some vue pluggins)\r\n\r\n### New to VueJs\r\nVue is a MVVM front end framework developped by Evan You. It is reactive as Facebook\'s React. If you are very new to this, you can follow the good screencasts of [Laracasts](https://laracasts.com/series/learning-vue-step-by-step).\r\n\r\nWhat makes vue unique and great with webpack is the .vue file format, holding in the same place your component\'s markup (template), logic (script), css (style). For any of those, you can use the language you want, for exemple: jade for markup, coffescript for script, and sass for styles, or keep it simple and go with html js and css.\r\n\r\nThis ensemble uses 3 plugins:\r\n1. [Vue Router](https://github.com/vuejs/vue-router) to manage routes\r\n2. [Vue Resource](https://github.com/vuejs/vue-resource) for ajax calls to API\r\n3. [Vuex](https://github.com/vuejs/vuex), Vue equivalent of React\'s Flux, here the use is very basic: hold the loading state during Api calls\r\n\r\n### Modify workspace / sym-vue / src / Api.js\r\nWith the root var with the path to your Symphony install.\r\n\r\n### Webpack\r\n1. Open your terminal and \'cd\' to \'sym-vue\' directory, located inside the workpace\r\n2. Type \'npm install --save\' and take a coffee\r\n3. Type \'npm run dev\'\r\n4. With the browser go to webpack server at \'http://localhost:8080/\'\r\n\r\nWith your text editor, modify the vue components and enjoy the hot reload injecting your modifications in realtime in the browser.  \r\nWhen your app is ready, type \'ctrl + c\' to stop the webpack dev server, and \'npm run build\' to see all your components compiled and minified effortlessly.', '\"\\u003Ch3\\u003ERequirements\\u003C\\/h3\\u003E\\n\\u003Cp\\u003EThe following softwares are needed only for front end dev, not for production\\u003C\\/p\\u003E\\n\\u003Col\\u003E\\n\\u003Cli\\u003E\\n\\u003Ca href=\\u0022https:\\/\\/nodejs.org\\/en\\/\\u0022\\u003Enodejs\\u003C\\/a\\u003E\\n\\u003C\\/li\\u003E\\n\\u003Cli\\u003E\\n\\u003Ca href=\\u0022http:\\/\\/webpack.github.io\\/docs\\/tutorials\\/getting-started\\/\\u0022\\u003Ewebpack\\u003C\\/a\\u003E\\n\\u003C\\/li\\u003E\\n\\u003Cli\\u003EText editor (\\u003Ca href=\\u0022https:\\/\\/atom.io\\/\\u0022\\u003EAtom\\u003C\\/a\\u003E is great with some vue pluggins)\\u003C\\/li\\u003E\\n\\u003C\\/ol\\u003E\\n\\u003Ch3\\u003ENew to VueJs\\u003C\\/h3\\u003E\\n\\u003Cp\\u003EVue is a MVVM front end framework developped by Evan You. It is reactive as Facebook\'s React. If you are very new to this, you can follow the good screencasts of \\u003Ca href=\\u0022https:\\/\\/laracasts.com\\/series\\/learning-vue-step-by-step\\u0022\\u003ELaracasts\\u003C\\/a\\u003E.\\u003C\\/p\\u003E\\n\\u003Cp\\u003EWhat makes vue unique and great with webpack is the .vue file format, holding in the same place your component\'s markup (template), logic (script), css (style). For any of those, you can use the language you want, for exemple: jade for markup, coffescript for script, and sass for styles, or keep it simple and go with html js and css.\\u003C\\/p\\u003E\\n\\u003Cp\\u003EThis ensemble uses 3 plugins:\\u003C\\/p\\u003E\\n\\u003Col\\u003E\\n\\u003Cli\\u003E\\n\\u003Ca href=\\u0022https:\\/\\/github.com\\/vuejs\\/vue-router\\u0022\\u003EVue Router\\u003C\\/a\\u003E to manage routes\\u003C\\/li\\u003E\\n\\u003Cli\\u003E\\n\\u003Ca href=\\u0022https:\\/\\/github.com\\/vuejs\\/vue-resource\\u0022\\u003EVue Resource\\u003C\\/a\\u003E for ajax calls to API\\u003C\\/li\\u003E\\n\\u003Cli\\u003E\\n\\u003Ca href=\\u0022https:\\/\\/github.com\\/vuejs\\/vuex\\u0022\\u003EVuex\\u003C\\/a\\u003E, Vue equivalent of React\'s Flux, here the use is very basic: hold the loading state during Api calls\\u003C\\/li\\u003E\\n\\u003C\\/ol\\u003E\\n\\u003Ch3\\u003EModify workspace \\/ sym-vue \\/ src \\/ Api.js\\u003C\\/h3\\u003E\\n\\u003Cp\\u003EWith the root var with the path to your Symphony install.\\u003C\\/p\\u003E\\n\\u003Ch3\\u003EWebpack\\u003C\\/h3\\u003E\\n\\u003Col\\u003E\\n\\u003Cli\\u003EOpen your terminal and \'cd\' to \'sym-vue\' directory, located inside the workpace\\u003C\\/li\\u003E\\n\\u003Cli\\u003EType \'npm install --save\' and take a coffee\\u003C\\/li\\u003E\\n\\u003Cli\\u003EType \'npm run dev\'\\u003C\\/li\\u003E\\n\\u003Cli\\u003EWith the browser go to webpack server at \'http:\\/\\/localhost:8080\\/\'\\u003C\\/li\\u003E\\n\\u003C\\/ol\\u003E\\n\\u003Cp\\u003EWith your text editor, modify the vue components and enjoy the hot reload injecting your modifications in realtime in the browser.\\u003Cbr \\/\\u003E\\nWhen your app is ready, type \'ctrl + c\' to stop the webpack dev server, and \'npm run build\' to see all your components compiled and minified effortlessly.\\u003C\\/p\\u003E\"');

-- *** STRUCTURE:`tbl_entries_data_3` ***
DROP TABLE IF EXISTS`tbl_entries_data_3`;
CREATE TABLE`tbl_entries_data_3` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_3` ***
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`) VALUES (89, 1, 'yes');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`) VALUES (87, 2, 'yes');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`) VALUES (90, 3, 'yes');

-- *** STRUCTURE:`tbl_entries_data_4` ***
DROP TABLE IF EXISTS`tbl_entries_data_4`;
CREATE TABLE`tbl_entries_data_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_4` ***
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 4, 'First comment from backend', '\"\\u003Cp\\u003EFirst comment from backend\\u003C\\/p\\u003E\"');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 5, 'Second comment still from backend', '\"\\u003Cp\\u003ESecond comment still from backend\\u003C\\/p\\u003E\"');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 6, 'Test from front end', '\"\\u003Cp\\u003ETest from front end\\u003C\\/p\\u003E\"');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 7, 'Comment from front end', '\"\\u003Cp\\u003EComment from front end\\u003C\\/p\\u003E\"');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 8, 'Another test', '\"\\u003Cp\\u003EAnother test\\u003C\\/p\\u003E\"');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 9, 'Good work', '\"\\u003Cp\\u003EGood work\\u003C\\/p\\u003E\"');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 10, 'Thanks! But there is still lot of room for improvement. I will optimize the comments loading. And example of meta change for the routes. And images so it s a wip ;-)', '\"\\u003Cp\\u003EThanks! But there is still lot of room for improvement. I will optimize the comments loading. And example of meta change for the routes. And images so it s a wip ;-)\\u003C\\/p\\u003E\"');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 11, 'rtret', '\"\\u003Cp\\u003Ertret\\u003C\\/p\\u003E\"');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 12, 'erter', '\"\\u003Cp\\u003Eerter\\u003C\\/p\\u003E\"');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 13, 'ert', '\"\\u003Cp\\u003Eert\\u003C\\/p\\u003E\"');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 14, 'ertretewwrt', '\"\\u003Cp\\u003Eertretewwrt\\u003C\\/p\\u003E\"');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 15, 'Eryuvfgb', '\"\\u003Cp\\u003EEryuvfgb\\u003C\\/p\\u003E\"');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 16, 'test', '\"\\u003Cp\\u003Etest\\u003C\\/p\\u003E\"');

-- *** STRUCTURE:`tbl_entries_data_5` ***
DROP TABLE IF EXISTS`tbl_entries_data_5`;
CREATE TABLE`tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_5` ***
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `relation_id`) VALUES (5, 4, 1);
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `relation_id`) VALUES (6, 5, 1);
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `relation_id`) VALUES (7, 6, 1);
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `relation_id`) VALUES (8, 7, 3);
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `relation_id`) VALUES (9, 8, 1);
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `relation_id`) VALUES (10, 9, 3);
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `relation_id`) VALUES (11, 10, 3);
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `relation_id`) VALUES (12, 11, 3);
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `relation_id`) VALUES (13, 12, 3);
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `relation_id`) VALUES (14, 13, 3);
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `relation_id`) VALUES (15, 14, 3);
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `relation_id`) VALUES (16, 15, 3);
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `relation_id`) VALUES (17, 16, 3);

-- *** STRUCTURE:`tbl_entries_data_6` ***
DROP TABLE IF EXISTS`tbl_entries_data_6`;
CREATE TABLE`tbl_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_6` ***

-- *** STRUCTURE:`tbl_entries_data_7` ***
DROP TABLE IF EXISTS`tbl_entries_data_7`;
CREATE TABLE`tbl_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_7` ***

-- *** STRUCTURE:`tbl_entries_data_8` ***
DROP TABLE IF EXISTS`tbl_entries_data_8`;
CREATE TABLE`tbl_entries_data_8` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_8` ***

-- *** STRUCTURE:`tbl_entries_data_9` ***
DROP TABLE IF EXISTS`tbl_entries_data_9`;
CREATE TABLE`tbl_entries_data_9` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_9` ***
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (37, 1, 'how-it-works', 'How it works', '\"How It Works\"', 3);
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (38, 3, 'how-to-build-the-api', 'How to build the API', '\"How to Build the API\"', 5);
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`, `value_formatted`, `word_count`) VALUES (35, 2, 'how-to-work-with-vue', 'How to work with Vue', '\"How to Work With Vue\"', 5);

-- *** DATA:`tbl_entries` ***
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (1, 1, 1, '2016-05-05 11:24:29', '2016-05-05 09:24:29', '2016-05-10 15:33:03', '2016-05-10 13:33:03');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (2, 1, 1, '2016-05-05 11:24:52', '2016-05-05 09:24:52', '2016-05-10 00:08:03', '2016-05-09 22:08:03');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (3, 1, 1, '2016-05-05 11:25:08', '2016-05-05 09:25:08', '2016-05-21 12:19:27', '2016-05-21 10:19:27');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (4, 2, 1, '2016-05-05 11:26:24', '2016-05-05 09:26:24', '2016-05-08 23:29:34', '2016-05-08 21:29:34');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (5, 2, 1, '2016-05-05 11:53:54', '2016-05-05 09:53:54', '2016-05-08 23:29:40', '2016-05-08 21:29:40');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (6, 2, 1, '2016-05-08 12:16:19', '2016-05-08 10:16:19', '2016-05-08 23:29:45', '2016-05-08 21:29:45');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (7, 2, 1, '2016-05-08 13:02:57', '2016-05-08 11:02:57', '2016-05-08 23:29:49', '2016-05-08 21:29:49');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (8, 2, 1, '2016-05-10 00:12:27', '2016-05-09 22:12:27', '2016-05-10 00:12:27', '2016-05-09 22:12:27');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (9, 2, 1, '2016-05-10 05:58:13', '2016-05-10 03:58:13', '2016-05-10 05:58:13', '2016-05-10 03:58:13');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (10, 2, 1, '2016-05-10 10:20:10', '2016-05-10 08:20:10', '2016-05-10 10:20:10', '2016-05-10 08:20:10');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (11, 2, 1, '2016-05-19 22:31:29', '2016-05-19 20:31:29', '2016-05-19 22:31:29', '2016-05-19 20:31:29');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (12, 2, 1, '2016-05-19 22:31:33', '2016-05-19 20:31:33', '2016-05-19 22:31:33', '2016-05-19 20:31:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (13, 2, 1, '2016-05-19 22:31:47', '2016-05-19 20:31:47', '2016-05-19 22:31:47', '2016-05-19 20:31:47');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (14, 2, 1, '2016-05-19 22:31:55', '2016-05-19 20:31:55', '2016-05-19 22:31:55', '2016-05-19 20:31:55');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (15, 2, 1, '2016-05-21 07:14:33', '2016-05-21 05:14:33', '2016-05-21 07:14:33', '2016-05-21 05:14:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (16, 2, 1, '2016-05-21 12:12:06', '2016-05-21 10:12:06', '2016-05-21 12:12:06', '2016-05-21 10:12:06');

-- *** DATA:`tbl_extensions` ***
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'commonmark', 'enabled', '1.0.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'debugdevkit', 'enabled', '1.3.3');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'editor_for_symphony', 'enabled', '0.3.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'export_ensemble', 'enabled', '2.2.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'http_response_header_mappings', 'enabled', '1.4.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'jit_image_manipulation', 'enabled', 1.44);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'maintenance_mode', 'enabled', '1.9.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'markdown', 'enabled', 1.21);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'profiledevkit', 'enabled', '1.5.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'selectbox_link_field', 'enabled', 1.34);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'uniqueuploadfield', 'enabled', '1.10.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'xssfilter', 'enabled', '1.4.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (13, 'html5_doctype', 'enabled', '1.3.4');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (14, 'textboxfield', 'enabled', '2.5.3');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (15, 'json_formatter', 'enabled', '0.0.1');

-- *** DATA:`tbl_extensions_delegates` ***
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (48, 2, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (47, 2, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (46, 3, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (45, 4, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (41, 5, '/frontend/', 'FrontendPreRenderHeaders', 'setHeader');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (39, 6, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (36, 7, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (35, 7, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (34, 7, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (33, 7, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (32, 7, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (31, 9, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (30, 9, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (28, 12, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (27, 12, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (26, 12, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (25, 12, '/blueprints/events/', 'AppendEventFilterDocumentation', 'appendEventFilterDocumentation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (44, 13, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (43, 13, '/frontend/', 'FrontendPageResolved', 'setRenderTrigger');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (42, 13, '/frontend/', 'FrontendOutputPostGenerate', 'parse_html');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (29, 12, '/frontend/', 'FrontendParamsResolve', 'frontendParamsResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (37, 7, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (38, 7, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (40, 6, '/system/preferences/', 'Save', '__SavePreferences');

-- *** DATA:`tbl_fields` ***
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (9, 'Title', 'title', 'textbox', 1, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Text', 'text', 'textarea', 1, 'yes', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Publish', 'publish', 'checkbox', 1, 'no', 2, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Text', 'text', 'textarea', 2, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Article', 'article', 'selectbox_link', 2, 'yes', 1, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Title', 'title', 'input', 3, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (7, 'Content', 'content', 'textarea', 3, 'yes', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (8, 'Publish', 'publish', 'checkbox', 3, 'no', 2, 'sidebar', 'yes');

-- *** DATA:`tbl_pages` ***
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, 5, 'articles', 'articles', 'api', 'page', 'articles', NULL, 4);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (2, 5, 'article', 'article', 'api', 'title/page', 'article,comments', NULL, 5);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (3, NULL, 'post', 'post', NULL, NULL, NULL, 'comment', 2);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (4, NULL, 'app', 'app', NULL, NULL, NULL, NULL, 1);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (5, NULL, 'api', 'api', NULL, NULL, NULL, NULL, 3);

-- *** DATA:`tbl_pages_types` ***
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (6, 4, 'index');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (7, 4, 404);
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (12, 2, 'alloworigins');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (14, 1, 'alloworigins');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (13, 2, 'JSON');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (15, 1, 'JSON');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (16, 3, 'alloworigins');

-- *** DATA:`tbl_sections` ***
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`) VALUES (1, 'Articles', 'articles', 2, 'no', 'no', 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`) VALUES (2, 'Comments', 'comments', 3, 'no', 'no', 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`) VALUES (3, 'Pages', 'pages', 1, 'no', 'no', 'Content');

-- *** DATA:`tbl_sections_association` ***
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (2, 1, 9, 2, 5, 'yes', NULL, NULL);
