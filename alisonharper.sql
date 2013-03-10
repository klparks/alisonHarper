-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 10, 2013 at 01:27 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `alisonharper`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_commentmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` VALUES(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2013-01-19 04:21:29', '2013-01-19 04:21:29', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);
INSERT INTO `wp_comments` VALUES(2, 5, 'Mr WordPress', '', 'http://wordpress.org/', '', '2013-01-12 20:23:20', '2013-01-12 20:23:20', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);
INSERT INTO `wp_comments` VALUES(3, 1, 'admin', 'kristen.parks@elevenpeppers.com', '', '127.0.0.1', '2013-01-20 16:19:09', '2013-01-20 16:19:09', 'test', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:16.0) Gecko/20100101 Firefox/16.0', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_gcb`
--

DROP TABLE IF EXISTS `wp_gcb`;
CREATE TABLE IF NOT EXISTS `wp_gcb` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `description` text NOT NULL,
  `value` text NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'other',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `wp_gcb`
--

INSERT INTO `wp_gcb` VALUES(3, 'Homepage Company Description', 'This is a description of Alison Harper and Company that will appear on every homepage.', '&lt;p class=\\&quot;intro\\&quot;&gt;We are the metro area\\''s leading hair and makeup artists. Our stellar team specializes in bridal hair and makeup so you can be sure you are receiving the best service possible. Not only do we want you to look smashing, we want you to feel that way too. We are currently making engaged couples look glamorous all over the Maryland, Washington D.C. and Northern Virginia areas.&lt;/p&gt;', 'other');
INSERT INTO `wp_gcb` VALUES(4, 'Alison''s Bio', 'This is Alison Harper\\''s about page which will appear on every site.', '&lt;h2&gt;Meet Alison Harper&lt;/h2&gt;\r\n&lt;p class=\\&quot;left\\&quot;&gt;&lt;img class=\\&quot; wp-image-213 aligncenter\\&quot; alt=\\&quot;Alison\\&quot; src=\\&quot;http://alisonHarper.dev/wp-content/uploads/2013/02/2179995_orig.jpg\\&quot; width=\\&quot;600px\\&quot; height=\\&quot;auto\\&quot; /&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;intro left\\&quot;&gt;Hello there! My name is Alison and I lead this fabulous team.&lt;/p&gt;\r\n&lt;p class=\\&quot;left\\&quot;&gt;I\\''m a mid-twenty something vegetarian with a strikingly quiet, golf addicted husband and a mini-schnauzer. I\\''m obsessed with Mad Men, I trail ride occasionally and work close to 24 hours a day. Its impossible -but some how I am fashion obsessed yet still fashion challenged. I\\''m one of 5, with a massive opinionated family and I avoid wearing my glasses in public. No offense to glasses wearers, I just hate mine. I think they are the same pair I picked out sophomore year in high school. You can stop reading now if you\\''d like, but if you\\''re intrigued and would like to know more about how I ended up here; read on.&lt;/p&gt;\r\n&lt;p class=\\&quot;clear\\&quot;&gt;I honestly had absolutely no clue that I was going to do this with my life. As a kid I wanted to teach, in college, I wanted to be a sign language interpreter. Finally as an adult I just wanted to be happy. [For the record I\\''m still working on that, but I\\''m a lot closer] In 2007 I tripped and fell into the beauty industry. College didn\\''t work out for me and I followed my little sister into hair school. [That\\''s a story for another day!] I loved it. I mean I loved the industry I just didn\\''t enjoy all the other stuff. I had no idea what I was going to do, I didn\\''t really want to be behind a chair but I loved this industry.&lt;/p&gt;\r\n&lt;p&gt;[caption id=\\&quot;attachment_214\\&quot; align=\\&quot;aligncenter\\&quot; width=\\&quot;600\\&quot;]&lt;img class=\\&quot; wp-image-214    \\&quot; alt=\\&quot;_______4302358\\&quot; src=\\&quot;http://alisonHarper.dev/wp-content/uploads/2013/02/4302358.jpg\\&quot; width=\\&quot;600\\&quot; height=\\&quot;auto\\&quot; /&gt; Alison &amp;amp; Caitlin age 13 and 11[/caption]&lt;/p&gt;\r\n&lt;p&gt;After bouncing around a salon or two I was lost, broke and hating my industry. A girlfriend was getting married and asked me to help with her hair. That is when it happened. There was a buzz, it was electric. The excitement, the pressure. Making someone feel stunning on one of the biggest days of their life. It was enthralling. I found it.&lt;/p&gt;\r\n&lt;p&gt;I found my thing.&lt;/p&gt;\r\n&lt;p&gt;After a little prodding from my now husband Jd, I built a little website. I forced my little sister to come work with me and I started meeting the sweetest brides. I\\''ve stumbled and pushed my way through building this business. It isn\\''t easy, I don\\''t think it gets easier but I don\\''t regret a minute of it. I knew nothing about taxes, advertising, budget. Nothing. I am still learning as we grow.&lt;/p&gt;\r\n&lt;p&gt;After doing this for a bit I realized that I can\\''t keep this to myself. It is selfish of me to keep this to myself. We have an overabundance of fabulous brides needing talented, organized and fun artists. There is so much talent in this area. I had to share. There is a way for talented area artists to earn a living doing something they too are passionate about. We started to grow. I have hand selected each and everyone of our team members. I keep up on them -I get on their back, I help educate them and they are talented. They even surprise me sometimes.&lt;/p&gt;\r\n&lt;p&gt;I never thought I would be here. I never thought I would be doing something I feel so passionate about and making such a difference in so many peoples lives. I realized I really loved this. This is my calling.&lt;/p&gt;\r\n&lt;p&gt;&lt;img class=\\&quot; wp-image-215 \\&quot; alt=\\&quot;Photo by I heart Ole Photography\\&quot; src=\\&quot;http://alisonHarper.dev/wp-content/uploads/2013/02/7520024_orig.jpg\\&quot; width=\\&quot;600px\\&quot; height=\\&quot;auto\\&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;I just got married. It was a real eye opening experience. I finally have a clear understanding of how difficult it is to plan a wedding. I argued with my mom about center pieces, I changed my mind 300 times and I was a complete nut job scatter brain. All I wanted was for my vendors to show up, work there magic and allow me to enjoy and absorb the intensity of my day. Since then I\\''ve worked on making sure my clients are able to sit back and take in all in while we make magic.&lt;/p&gt;\r\n&lt;p&gt;[caption id=\\&quot;attachment_212\\&quot; align=\\&quot;aligncenter\\&quot; width=\\&quot;600\\&quot;]&lt;img class=\\&quot; wp-image-212 \\&quot; alt=\\&quot;Alison wedding dress\\&quot; src=\\&quot;http://alisonHarper.dev/wp-content/uploads/2013/02/2092093_orig.jpg\\&quot; width=\\&quot;600\\&quot; height=\\&quot;auto\\&quot; /&gt; Photo by I heart Ole Photography[/caption]&lt;/p&gt;\r\n&lt;p&gt;I\\''ve built this business on a few key principles.&lt;/p&gt;\r\n&lt;p&gt;I want happy clients.&lt;br /&gt;I want happy artists.&lt;br /&gt;I want to make people understand how beautiful they really are.&lt;/p&gt;\r\n&lt;p&gt;Its simple.&lt;/p&gt;\r\n&lt;p&gt;Thanks for stopping by and reading. I\\''d love to get to know more about you. In fact I\\''d love to set you up on a fun little beauty date with one of my girls. Head on over to our contact page if you\\''d like to chat sometime.&lt;/p&gt;\r\n&lt;p&gt;Xo&lt;/p&gt;\r\n&lt;p&gt;Alison Harper&lt;/p&gt;\r\n', 'other');
INSERT INTO `wp_gcb` VALUES(6, 'About Landing Page Content', 'This is the first content that will appear on the landing page for \\&quot;About.\\&quot;', '&lt;p&gt;&lt;a href=\\&quot;http://alisonHarper.dev/wp-content/uploads/2013/02/7516767_orig.jpg\\&quot;&gt;&lt;img class=\\&quot;aligncenter size-full wp-image-227\\&quot; alt=\\&quot;_______7516767_orig\\&quot; src=\\&quot;http://alisonHarper.dev/wp-content/uploads/2013/02/7516767_orig.jpg\\&quot; width=\\&quot;1100\\&quot; height=\\&quot;731\\&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;Our approach is simple.&lt;br /&gt;We want you to be happy.&lt;br /&gt;Relaxed &amp;amp; happy.&lt;br /&gt;Clean fresh makeup. &lt;br /&gt;Soft beautiful, touchable hair.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;We want you to look like you only with the fabulous turned up a notch.&lt;/strong&gt; &lt;br /&gt;Maybe you know what you want. Maybe you don\\''t have a clue. We\\''re here to help. We aren\\''t just your hair stylists or makeup artists. We are how you will start one of the most memorable days of your life. Choose wisely. Choose Fabulously.&lt;/p&gt;', 'other');
INSERT INTO `wp_gcb` VALUES(7, 'Caitlin''s Bio', 'This is a bio about the artist, Caitlin.', '&lt;p&gt;Caitlin is a licensed cosmetologist and this is the back of her head. She went to Paul Mitchell in Va and has been doing both hair and makeup for 9 years! Can you believe she has only ever done hair and makeup. She\\''s fabulous with loose, soft styles and bad jokes. She has worked in this industry for the past 10 years.&lt;/p&gt;\r\n&lt;p&gt;Never in her life has she ever done anything work wise other than hair and makeup. Seriously, ever.&lt;/p&gt;', 'other');
INSERT INTO `wp_gcb` VALUES(8, 'Katy''s Bio', 'This is the bio about the artist, Katy.', '&lt;p&gt;This fierce little kitten is Katy. A crowd favorite! She is an amazing hair and makeup artist. Katy was our very first artist addition to the roster, and has been with us since the beginning. She is a licensed cosmetologist and is super experienced. &lt;/p&gt;\r\n&lt;p&gt;Her training began at the Von Lee school for esthetics\\''s. Once she finished there she began training under a master stylist. Having 9 years salon experience and a cult like bridal following has made Katy the best. &lt;/p&gt;\r\n&lt;p&gt;thebestperiod.&lt;/p&gt;\r\n', 'other');
INSERT INTO `wp_gcb` VALUES(9, 'Jen Lee''s Bio', 'The is the bio for the artist, Jen Lee.', '&lt;p&gt;Jen lee is fabulous and a licensed esthetician. She is the only woman I trust to wax my eyebrows.&lt;/p&gt;\r\n&lt;p&gt;She is hardcore awesome.&lt;/p&gt;\r\n&lt;p&gt;With over 7 years of experience Jen is super skilled in skin care and the art of makeup. She is meticulous and constantly attending continuing education courses and seminars. With her extensive knowledge of skin care she is able to tackle any complexion and sensitivities.&lt;/p&gt;\r\n&lt;p&gt;Bring it on.&lt;/p&gt;\r\n', 'other');
INSERT INTO `wp_gcb` VALUES(10, 'Gabriela''s Bio', 'This is the bio for the artist, Gabriela.', '&lt;p&gt;She is one of our most experienced artists. Gabby has been in the hair and  makeup industry for well over 1o years. Teaching, learning &amp; making people beautiful. She brings a little flavor to our group. I love it. &lt;/p&gt;\r\n\r\n&lt;p&gt;She has studied at Patrice Academy School of Cosmetology, Full Esthetics\\''s at Ivonne the Vilar and has worked in salon doing both hair and makeup for over 14 years. &lt;/p&gt;\r\n\r\n&lt;p&gt;Not only is she an amazing hair stylist and makeup artist, she is also fabulous with extensions, hair pieces and brazilian blow outs. &lt;/p&gt;\r\n\r\n&lt;p&gt;We should call her a magician not an artist.&lt;/p&gt;', 'other');
INSERT INTO `wp_gcb` VALUES(11, 'Martha''s Bio', 'This is the bio for the artist, Martha.', '&lt;p&gt;Martha is another awesome artist on our team.&lt;/p&gt;\r\n\r\n&lt;p&gt;She is a graduate from the Patrice Academy School of Cosmetology. She is a wiz and one of the few artists who is able to tackle both hair and makeup. &lt;/p&gt;\r\n\r\n&lt;p&gt;Martha has worked in salon for over 3 years and was one of our very first staff additions. With her training in both skin care, makeup and hair she is by far one of our sweetest and most detail oriented artists...not to mention one of our most highly requested. &lt;/p&gt;', 'other');
INSERT INTO `wp_gcb` VALUES(12, 'Shelly''s Bio', 'This is the bio for the artist, Shelley.', '&lt;p&gt;Meet Shelly. Well, she\\''s the one in purple. Making this little star feel fabulous for the wedding. &lt;/p&gt;\r\n\r\n&lt;p&gt;Shelly is talented, caring, sweet. Oh did I mention talented? She\\''s got this sweet knack for creating that soft, romantic, touchable and secure updo that our brides have pinterest dreams about.&lt;/p&gt;\r\n\r\n&lt;p&gt;She\\''s  Leon Studio One School of Hair Design in Buffalo, NY with top honors in 2005. She is really, really awesome. &lt;/p&gt;\r\n\r\n&lt;p&gt;So, this is Shelly. We think you\\''d like to meet her.&lt;/p&gt;', 'other');
INSERT INTO `wp_gcb` VALUES(13, 'Abagail''s Bio', 'This is the bio for the artist, Abigail.', '&lt;p&gt;Abigail, is one of our newest artists and is quite a hit. [ie, she is hysterical] She has had her hands in hair since she was young and absolutely loves styling it. &lt;/p&gt;\r\n&lt;p&gt;Not only that but she loves makeup. Being one of our few DC double hitters she is able to handle both hair and makeup. Flawlessly.&lt;/p&gt;\r\n&lt;p&gt;One of her favorite styling techniques is the blow dry set, what we in the biz call the \\''Victoria\\''s Secret blow out\\''. She is vivacious and has a great eye for beautiful finished styles. You\\''d love to spend your morning with this talented lady.&lt;/p&gt;\r\n', 'other');
INSERT INTO `wp_gcb` VALUES(14, 'Genevieve', 'This is the bio for the artist, Genevieve.', '&lt;p&gt;Genevieve is one of our most laid back makeup artists. She has done makeup for numerous photo shoots and fashion shows. Genevieve has also gone through extensive in house training. She is one of our big time requested makeup artists. She has a real knack for that even skinned, natural, earth-toned smoke eye that you see all over the red carpet. Watch this one, she is going places. &lt;/p&gt;', 'other');
INSERT INTO `wp_gcb` VALUES(15, 'Tiffany''s Bio', 'This is the bio for the artist, Tiffany.', '&lt;p&gt;Tiffany is one heck of a makeup artist. She\\''s comes to us directly from New York. Which in case you were curious is a little bit of a makeup mecca. &lt;/p&gt;\r\n\r\n&lt;p&gt;She got into this industry working with a bridal boutique and fell for makeup. She freelanced for Makeup Forever before her trip down to coast before joining our team. Tiffany is a temptu certified airbrush makeup artist.&lt;/p&gt;', 'other');
INSERT INTO `wp_gcb` VALUES(16, 'Shelby''s Bio', 'This is the bio for the artist, Shelby.', '&lt;p&gt;Shelby is one of our talented makeup artists and she is one of the sweetest artists on our team. &lt;/p&gt;\r\n\r\n&lt;p&gt;She started learning makeup and joining in this industry at the Baltimore School of Massage and continued her training over the years. She has worked in a few local salons and freelanced quite a bit. She is quite prepared to handle any skin type and preferences and I have faith that she will knock your socks off. &lt;/p&gt;', 'other');
INSERT INTO `wp_gcb` VALUES(17, 'Meagan''s Bio', 'This is the bio for the artist, Meagan.', '&lt;p&gt;Meagan  pronounced \\&quot;MEE-gan\\&quot;, which she will correct you on; specializes in beauty, runway, editorial, commercial, as well as make up for television. She\\''s hysterical, rambunctious and wants to be a lounge singer. &lt;/p&gt;\r\n\r\n&lt;p&gt;Meagan is uber talented and has a knack for creating a glowing, flawless, even skin tone. Our brides not only love Meagan\\''s technique but they also love her personality. She is that funny. &lt;/p&gt;', 'other');
INSERT INTO `wp_gcb` VALUES(18, 'Journey''s Bio', 'This is the bio for the artist, Journey.', '&lt;p&gt;Journey comes to our team from the south and brings not only some sweet hair skills but also the most gentle approach.&lt;/p&gt;\r\n\r\n&lt;p&gt;She has a dedication to her clients and making sure that they find the look that they\\''ve been imagining. &lt;/p&gt;\r\n\r\n&lt;p&gt;Journey  is also like a beauty industry sponge, constantly attending classes, workshops and continuing education classes. She is committed, talented and well very talented.&lt;/p&gt;', 'other');
INSERT INTO `wp_gcb` VALUES(19, 'Leigh''s Bio', 'This is the bio for the artist, Leigh.', '&lt;p&gt;Leigh is ahhmazing. I first have to say she is the most positive and uplifting person. With a huge smile and a very stacked makeup case &amp; hair kit she is taking over the DC area. She has a seriously extensive resume, from LA to Miami she\\''s worked it out. &lt;/p&gt;\r\n\r\n&lt;p&gt;Seriously. She\\''s even done Ja Rule\\''s makeup. Yes, he did get his makeup done. [and if you have to ask, he\\''s an early 00\\'' rapper -now I feel old.] &lt;/p&gt; \r\n\r\n&lt;p&gt;She has trained at the Graham Webb Academy, through TIGI Academy and also has advanced MAC training. She is a seriously intense artist being licensed and capable to do both hair and makeup.&lt;/p&gt;', 'other');
INSERT INTO `wp_gcb` VALUES(20, 'Price Tier 1', 'This is the menu of services and prices for the first price tier.', '&lt;div id=\\&quot;weddingServices\\&quot;&gt;\r\n&lt;header&gt;\r\n&lt;h2&gt;Wedding Services&lt;/h2&gt;\r\n&lt;/header&gt;\r\n&lt;p&gt;Let\\''s keep this nice and simple.We give the same time and attention to everyone, so services are the same rate. Only interested in Makeup? Not to worry, everything is a la carte. So you can pick and choose your services. Fabulous.&lt;/p&gt;\r\n&lt;article class=\\&quot;services\\&quot; id=\\&quot;hair\\&quot;&gt;\r\n&lt;h3&gt;Hair&lt;/h3&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Formal Style&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$130&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Open-Ended Trial Hair Appointment&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$100&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Blowout&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$75&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Child\\''s Up-do&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$60&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/article&gt;\r\n&lt;article class=\\&quot;services\\&quot; id=\\&quot;makeup\\&quot;&gt;\r\n&lt;h3&gt;Makeup&lt;/h3&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Makeup Application&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$120&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p class=\\&quot;sideNote\\&quot;&gt;Traditional or Airbrush (includes lashes)&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Open-Ended Trail Makeup Application&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$100&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;False Eyelash Application&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$20&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/article&gt;\r\n&lt;p class=\\&quot;sideNote clear\\&quot;&gt;There is  a $50 travel fee for each wedding within 40 miles of 20707 [Laurel, Md]. We have a three (3) person or (4) service minimum. Unfortunately children\\''s services and lashes don\\''t count towards that minimum. Prices are subject to change.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'other');
INSERT INTO `wp_gcb` VALUES(21, 'Salon Services [MD only]', 'This is a price menu for the salon services.', '&lt;div id=\\&quot;salonServicesContainer\\&quot;&gt;\r\n&lt;header&gt;\r\n&lt;h2&gt;Salon Services&lt;/h2&gt;\r\n&lt;/header&gt;\r\n&lt;p&gt;Need a fresh cut and color? Can\\''t seem to find the time to get to the salon? Allow our traveling salon to come to you! Get the full experience in the privacy of your own home. Get together with the girls for one of our party packages to receive great discounts!&lt;/p&gt;\r\n&lt;div id=\\&quot;servicesContainer\\&quot; class=\\&quot;left\\&quot;&gt;\r\n&lt;article class=\\&quot;services\\&quot; id=\\&quot;cut\\&quot;&gt;\r\n&lt;h3&gt;Cut&lt;/h3&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Women\\''s Cut&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$45&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Women\\''s Cut with Bombshell Blowout&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$50&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Gentleman\\''s Cut&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$30&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Child\\''s Cut&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$30&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p class=\\&quot;sideNote\\&quot;&gt;ages 12 and under&lt;/p&gt;\r\n&lt;/article&gt;\r\n&lt;article class=\\&quot;services \\&quot; id=\\&quot;refresh\\&quot;&gt;\r\n&lt;h3&gt;Refresh&lt;/h3&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Classic Color&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$65&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Full Highlights&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$95&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Sparkle-Lites&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$65&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p class=\\&quot;sideNote\\&quot;&gt;Partial/Face framing highlights&lt;/p&gt;\r\n&lt;/article&gt;\r\n&lt;article class=\\&quot;services \\&quot; id=\\&quot;style\\&quot;&gt;\r\n&lt;h3&gt;Style&lt;/h3&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Formal Event Style&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$130&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/article&gt;\r\n&lt;article class=\\&quot;services\\&quot; id=\\&quot;extras\\&quot;&gt;\r\n&lt;h3&gt;Extra\\''s&lt;/h3&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Hair Rehab&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$25&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p class=\\&quot;sideNote\\&quot;&gt;Variety of Redken conditioning treatments available&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Makeup Application&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;$120.00&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p class=\\&quot;sideNote\\&quot;&gt;Airbrush or Traditional&lt;/p&gt;\r\n&lt;/article&gt;\r\n&lt;/div&gt;\r\n&lt;div id=\\&quot;hoursContainer\\&quot; class=\\&quot;left\\&quot;&gt;\r\n&lt;article id=\\&quot;salonHours\\&quot; class=\\&quot;services\\&quot;&gt;\r\n&lt;h3&gt;Hours of Operation&lt;/h3&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Monday&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;Closed&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Tuesday&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;10:00am-9:00pm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Wednesday&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;10:00am-7:00pm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Thursday&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;10:00am-9:00pm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Friday&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;10:00am-7:00pm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Saturday&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;Closed&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n&lt;li class=\\&quot;bold\\&quot;&gt;Sunday&lt;/li&gt;\r\n&lt;li class=\\&quot;right\\&quot;&gt;10:00am-7:00pm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/article&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n', 'other');
INSERT INTO `wp_gcb` VALUES(22, 'Featured Artist', 'This is a section of the homepage that features an artist.', '&lt;p&gt;&lt;a class=\\&quot;left\\&quot; href=\\&quot;http://alisonHarper.dev/wp-content/uploads/2013/02/featured.jpg\\&quot;&gt;&lt;img class=\\&quot;alignleft  wp-image-243\\&quot; alt=\\&quot;hair and makeup model\\&quot; src=\\&quot;http://alisonHarper.dev/wp-content/uploads/2013/02/featured-300x199.jpg\\&quot; width=\\&quot;300\\&quot; height=\\&quot;199\\&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n&lt;p class=\\&quot;left\\&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pretium bibendum dignissim. Nulla gravida, quam eu fermentum viverra, odio lectus facilisis quam, non vestibulum diam lorem a libero. Integer lacinia tincidunt augue, eget elementum leo eleifend et. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam sed felis id mi pellentesque cursus molestie non risus. Etiam leo justo, sollicitudin vel sagittis dignissim, consequat a dui. Donec convallis adipiscing risus, vel porttitor erat euismod ut. Duis sodales bibendum diam vel sagittis. Mauris a arcu in est bibendum tincidunt.&lt;/p&gt;', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=603 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` VALUES(1, 'siteurl', 'http://192.168.1.3:80.dev', 'yes');
INSERT INTO `wp_options` VALUES(2, 'blogname', 'Alison Harper and Company', 'yes');
INSERT INTO `wp_options` VALUES(3, 'blogdescription', 'On location hair and makeup services', 'yes');
INSERT INTO `wp_options` VALUES(4, 'users_can_register', '0', 'yes');
INSERT INTO `wp_options` VALUES(5, 'admin_email', 'kristen.parks@elevenpeppers.com', 'yes');
INSERT INTO `wp_options` VALUES(6, 'start_of_week', '1', 'yes');
INSERT INTO `wp_options` VALUES(7, 'use_balanceTags', '0', 'yes');
INSERT INTO `wp_options` VALUES(8, 'use_smilies', '1', 'yes');
INSERT INTO `wp_options` VALUES(9, 'require_name_email', '1', 'yes');
INSERT INTO `wp_options` VALUES(10, 'comments_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES(11, 'posts_per_rss', '10', 'yes');
INSERT INTO `wp_options` VALUES(12, 'rss_use_excerpt', '1', 'yes');
INSERT INTO `wp_options` VALUES(13, 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `wp_options` VALUES(14, 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `wp_options` VALUES(15, 'mailserver_pass', 'password', 'yes');
INSERT INTO `wp_options` VALUES(16, 'mailserver_port', '110', 'yes');
INSERT INTO `wp_options` VALUES(17, 'default_category', '1', 'yes');
INSERT INTO `wp_options` VALUES(18, 'default_comment_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES(19, 'default_ping_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES(20, 'default_pingback_flag', '1', 'yes');
INSERT INTO `wp_options` VALUES(21, 'posts_per_page', '10', 'yes');
INSERT INTO `wp_options` VALUES(22, 'date_format', 'F j, Y', 'yes');
INSERT INTO `wp_options` VALUES(23, 'time_format', 'g:i a', 'yes');
INSERT INTO `wp_options` VALUES(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes');
INSERT INTO `wp_options` VALUES(25, 'links_recently_updated_prepend', '<em>', 'yes');
INSERT INTO `wp_options` VALUES(26, 'links_recently_updated_append', '</em>', 'yes');
INSERT INTO `wp_options` VALUES(27, 'links_recently_updated_time', '120', 'yes');
INSERT INTO `wp_options` VALUES(28, 'comment_moderation', '0', 'yes');
INSERT INTO `wp_options` VALUES(29, 'moderation_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES(30, 'permalink_structure', '/%postname%/', 'yes');
INSERT INTO `wp_options` VALUES(31, 'gzipcompression', '0', 'yes');
INSERT INTO `wp_options` VALUES(32, 'hack_file', '0', 'yes');
INSERT INTO `wp_options` VALUES(33, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `wp_options` VALUES(34, 'moderation_keys', '', 'no');
INSERT INTO `wp_options` VALUES(35, 'active_plugins', 'a:7:{i:0;s:33:"duplicate-post/duplicate-post.php";i:1;s:47:"global-content-blocks/global-content-blocks.php";i:2;s:51:"map-categories-to-pages/map-categories-to-pages.php";i:3;s:45:"simple-page-ordering/simple-page-ordering.php";i:4;s:45:"taxonomy-terms-order/taxonomy-terms-order.php";i:5;s:37:"tinymce-advanced/tinymce-advanced.php";i:6;s:41:"wordpress-importer/wordpress-importer.php";}', 'yes');
INSERT INTO `wp_options` VALUES(36, 'home', 'http://192.168.1.3:80.dev', 'yes');
INSERT INTO `wp_options` VALUES(37, 'category_base', '', 'yes');
INSERT INTO `wp_options` VALUES(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `wp_options` VALUES(39, 'advanced_edit', '0', 'yes');
INSERT INTO `wp_options` VALUES(40, 'comment_max_links', '2', 'yes');
INSERT INTO `wp_options` VALUES(41, 'gmt_offset', '0', 'yes');
INSERT INTO `wp_options` VALUES(42, 'default_email_category', '1', 'yes');
INSERT INTO `wp_options` VALUES(43, 'recently_edited', 'a:2:{i:0;s:157:"/Users/kristenmattes/Desktop/eleven peppers/JOBS/AlisonHarper&Co/AlisonHarperRepo/alisonHarper/wp-content/plugins/simple-social-icons/simple-social-icons.php";i:2;s:0:"";}', 'no');
INSERT INTO `wp_options` VALUES(44, 'template', 'alisonHarper', 'yes');
INSERT INTO `wp_options` VALUES(45, 'stylesheet', 'alisonHarper', 'yes');
INSERT INTO `wp_options` VALUES(46, 'comment_whitelist', '1', 'yes');
INSERT INTO `wp_options` VALUES(47, 'blacklist_keys', '', 'no');
INSERT INTO `wp_options` VALUES(48, 'comment_registration', '0', 'yes');
INSERT INTO `wp_options` VALUES(49, 'html_type', 'text/html', 'yes');
INSERT INTO `wp_options` VALUES(50, 'use_trackback', '0', 'yes');
INSERT INTO `wp_options` VALUES(51, 'default_role', 'subscriber', 'yes');
INSERT INTO `wp_options` VALUES(52, 'db_version', '22441', 'yes');
INSERT INTO `wp_options` VALUES(53, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `wp_options` VALUES(54, 'upload_path', '', 'yes');
INSERT INTO `wp_options` VALUES(55, 'blog_public', '1', 'yes');
INSERT INTO `wp_options` VALUES(56, 'default_link_category', '2', 'yes');
INSERT INTO `wp_options` VALUES(57, 'show_on_front', 'page', 'yes');
INSERT INTO `wp_options` VALUES(58, 'tag_base', '', 'yes');
INSERT INTO `wp_options` VALUES(59, 'show_avatars', '1', 'yes');
INSERT INTO `wp_options` VALUES(60, 'avatar_rating', 'G', 'yes');
INSERT INTO `wp_options` VALUES(61, 'upload_url_path', '', 'yes');
INSERT INTO `wp_options` VALUES(62, 'thumbnail_size_w', '150', 'yes');
INSERT INTO `wp_options` VALUES(63, 'thumbnail_size_h', '150', 'yes');
INSERT INTO `wp_options` VALUES(64, 'thumbnail_crop', '1', 'yes');
INSERT INTO `wp_options` VALUES(65, 'medium_size_w', '300', 'yes');
INSERT INTO `wp_options` VALUES(66, 'medium_size_h', '300', 'yes');
INSERT INTO `wp_options` VALUES(67, 'avatar_default', 'mystery', 'yes');
INSERT INTO `wp_options` VALUES(68, 'large_size_w', '1024', 'yes');
INSERT INTO `wp_options` VALUES(69, 'large_size_h', '1024', 'yes');
INSERT INTO `wp_options` VALUES(70, 'image_default_link_type', 'file', 'yes');
INSERT INTO `wp_options` VALUES(71, 'image_default_size', '', 'yes');
INSERT INTO `wp_options` VALUES(72, 'image_default_align', '', 'yes');
INSERT INTO `wp_options` VALUES(73, 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES(74, 'close_comments_days_old', '14', 'yes');
INSERT INTO `wp_options` VALUES(75, 'thread_comments', '1', 'yes');
INSERT INTO `wp_options` VALUES(76, 'thread_comments_depth', '5', 'yes');
INSERT INTO `wp_options` VALUES(77, 'page_comments', '0', 'yes');
INSERT INTO `wp_options` VALUES(78, 'comments_per_page', '50', 'yes');
INSERT INTO `wp_options` VALUES(79, 'default_comments_page', 'newest', 'yes');
INSERT INTO `wp_options` VALUES(80, 'comment_order', 'asc', 'yes');
INSERT INTO `wp_options` VALUES(81, 'sticky_posts', 'a:3:{i:0;i:184;i:1;i:5;i:2;i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(83, 'widget_text', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(84, 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(85, 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES(86, 'timezone_string', '', 'yes');
INSERT INTO `wp_options` VALUES(87, 'page_for_posts', '19', 'yes');
INSERT INTO `wp_options` VALUES(88, 'page_on_front', '12', 'yes');
INSERT INTO `wp_options` VALUES(89, 'default_post_format', '0', 'yes');
INSERT INTO `wp_options` VALUES(90, 'link_manager_enabled', '0', 'yes');
INSERT INTO `wp_options` VALUES(91, 'initial_db_version', '22441', 'yes');
INSERT INTO `wp_options` VALUES(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes');
INSERT INTO `wp_options` VALUES(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes');
INSERT INTO `wp_options` VALUES(99, 'cron', 'a:4:{i:1361747713;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1361766110;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1361766120;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes');
INSERT INTO `wp_options` VALUES(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:1:{i:0;O:8:"stdClass":9:{s:8:"response";s:6:"latest";s:8:"download";s:40:"http://wordpress.org/wordpress-3.5.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:40:"http://wordpress.org/wordpress-3.5.1.zip";s:10:"no_content";s:51:"http://wordpress.org/wordpress-3.5.1-no-content.zip";s:11:"new_bundled";s:52:"http://wordpress.org/wordpress-3.5.1-new-bundled.zip";s:7:"partial";b:0;}s:7:"current";s:5:"3.5.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.5";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1362936213;s:15:"version_checked";s:5:"3.5.1";}', 'yes');
INSERT INTO `wp_options` VALUES(105, '_site_transient_update_themes', 'O:8:"stdClass":3:{s:12:"last_checked";i:1362936214;s:7:"checked";a:3:{s:12:"alisonHarper";s:3:"0.1";s:12:"twentyeleven";s:3:"1.5";s:12:"twentytwelve";s:3:"1.1";}s:8:"response";a:0:{}}', 'yes');
INSERT INTO `wp_options` VALUES(106, '_transient_random_seed', '019ebcfd272a0af5e3c605eab20a250e', 'yes');
INSERT INTO `wp_options` VALUES(107, 'auth_key', '7~KTy 9_}nl$:qt X}*|&5NF3HFS4>RPWdRp e/9~x<EDOd2ONMv$&.1&Q^Je)x,', 'yes');
INSERT INTO `wp_options` VALUES(108, 'auth_salt', 'H@MupKpXz`3f~->}HZ@9u.!M!kI0O;,<&yt6:IQ %Wnu?,Z=^A&=#yT1,>Sl.k3/', 'yes');
INSERT INTO `wp_options` VALUES(109, 'logged_in_key', '9_Ku]7]tDUNRIDlFTE/)6oo~S*O2Kk!Ot(f/>[ 2Df78bv|+k$lM`5gsT3i??%?=', 'yes');
INSERT INTO `wp_options` VALUES(110, 'logged_in_salt', 'dMdAmQr@L|vo@OjeKI_,^<%mZCvD90H !vGb/cc7P.=S6z`0W;ZY1Y/F9_KjT>QB', 'yes');
INSERT INTO `wp_options` VALUES(113, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:23:"http://alisonHarper.dev";s:4:"link";s:99:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://alisonHarper.dev/";s:3:"url";s:132:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://alisonharper.dev/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:14:"WordPress Blog";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:20:"Other WordPress News";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes');
INSERT INTO `wp_options` VALUES(114, 'nonce_key', '*m6!`02fHD~G6f5)kMn~Y4/,g:v._cw<<l-frI_)U!<hvgRVca%xg xk9k_lz!;L', 'yes');
INSERT INTO `wp_options` VALUES(115, 'nonce_salt', '%[v80ID/3Fj|TNR@09b0^5jtNX|Usx9hcj}(*y02o0yMeOM-n~ cOdA)VtCM06IG', 'yes');
INSERT INTO `wp_options` VALUES(117, 'can_compress_scripts', '1', 'yes');
INSERT INTO `wp_options` VALUES(151, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(155, 'theme_mods_twentytwelve', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358570067;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes');
INSERT INTO `wp_options` VALUES(156, 'current_theme', 'Alison Harper', 'yes');
INSERT INTO `wp_options` VALUES(157, 'theme_mods_alisonHarper', 'a:1:{i:0;b:0;}', 'yes');
INSERT INTO `wp_options` VALUES(158, 'theme_switched', '', 'yes');
INSERT INTO `wp_options` VALUES(200, 'gcb_db_version', '1.5.3', 'yes');
INSERT INTO `wp_options` VALUES(250, 'acx_si_installed_date', '1358804243', 'yes');
INSERT INTO `wp_options` VALUES(251, 'social_icon_array_order', 's:90:"a:7:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"3";i:3;s:1:"4";i:4;s:1:"2";i:5;s:1:"5";i:6;s:1:"6";}";', 'yes');
INSERT INTO `wp_options` VALUES(252, 'acx_fsmi_si_current_version', '1.1.5', 'yes');
INSERT INTO `wp_options` VALUES(253, 'acx_si_theme', '2', 'yes');
INSERT INTO `wp_options` VALUES(254, 'acx_si_twitter', 'alisonHarperCo', 'yes');
INSERT INTO `wp_options` VALUES(255, 'acx_si_facebook', 'https://www.facebook.com/AlisonHarperCo', 'yes');
INSERT INTO `wp_options` VALUES(256, 'acx_si_youtube', 'http://www.youtube.com/user/aliehsouza', 'yes');
INSERT INTO `wp_options` VALUES(257, 'acx_si_linkedin', '', 'yes');
INSERT INTO `wp_options` VALUES(258, 'acx_si_gplus', '', 'yes');
INSERT INTO `wp_options` VALUES(259, 'acx_si_credit', '', 'yes');
INSERT INTO `wp_options` VALUES(260, 'acx_si_icon_size', '25', 'yes');
INSERT INTO `wp_options` VALUES(261, 'acx_si_display', 'manual', 'yes');
INSERT INTO `wp_options` VALUES(262, 'acx_si_pinterest', 'http://pinterest.com/alisonharperco/', 'yes');
INSERT INTO `wp_options` VALUES(263, 'acx_si_feed', '', 'yes');
INSERT INTO `wp_options` VALUES(265, '_transient_plugins_delete_result_1', '1', 'yes');
INSERT INTO `wp_options` VALUES(291, 'tto_options', 'a:3:{s:8:"autosort";s:1:"1";s:9:"adminsort";s:1:"1";s:5:"level";i:8;}', 'yes');
INSERT INTO `wp_options` VALUES(329, '_site_transient_timeout_wporg_theme_feature_list', '1359012822', 'yes');
INSERT INTO `wp_options` VALUES(330, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:5:"Width";a:2:{i:0;s:11:"fixed-width";i:1;s:14:"flexible-width";}s:8:"Features";a:19:{i:0;s:8:"blavatar";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:20:"front-page-post-form";i:11;s:19:"full-width-template";i:12;s:12:"microformats";i:13;s:12:"post-formats";i:14;s:20:"rtl-language-support";i:15;s:11:"sticky-post";i:16;s:13:"theme-options";i:17;s:17:"threaded-comments";i:18;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes');
INSERT INTO `wp_options` VALUES(341, '_site_transient_timeout_popular_importers_en_US', '1359349536', 'yes');
INSERT INTO `wp_options` VALUES(342, '_site_transient_popular_importers_en_US', 'a:2:{s:9:"importers";a:8:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:86:"Install the Blogger importer to import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:109:"Install the category/tag converter to convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:9:"wpcat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:82:"Install the LiveJournal importer to import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:99:"Install the Movable Type importer to import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:4:"opml";a:4:{s:4:"name";s:8:"Blogroll";s:11:"description";s:61:"Install the blogroll importer to import links in OPML format.";s:11:"plugin-slug";s:13:"opml-importer";s:11:"importer-id";s:4:"opml";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:58:"Install the RSS importer to import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:84:"Install the Tumblr importer to import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:130:"Install the WordPress importer to import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'yes');
INSERT INTO `wp_options` VALUES(402, 'category_children', 'a:5:{i:6;a:6:{i:0;i:9;i:1;i:12;i:2;i:14;i:3;i:7;i:4;i:15;i:5;i:16;}i:13;a:1:{i:0;i:17;}i:3;a:3:{i:0;i:10;i:1;i:11;i:2;i:8;}i:2;a:4:{i:0;i:3;i:1;i:4;i:2;i:13;i:3;i:6;}i:4;a:1:{i:0;i:5;}}', 'yes');
INSERT INTO `wp_options` VALUES(403, 'rewrite_rules', 'a:70:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=12&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:29:"comments/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes');
INSERT INTO `wp_options` VALUES(474, '_site_transient_timeout_browser_7d2c50d5caf19973b21050b9ed31e119', '1361649409', 'yes');
INSERT INTO `wp_options` VALUES(475, '_site_transient_browser_7d2c50d5caf19973b21050b9ed31e119', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"16.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes');
INSERT INTO `wp_options` VALUES(528, 'duplicate_post_copyexcerpt', '1', 'yes');
INSERT INTO `wp_options` VALUES(529, 'duplicate_post_copyattachments', '0', 'yes');
INSERT INTO `wp_options` VALUES(530, 'duplicate_post_copychildren', '0', 'yes');
INSERT INTO `wp_options` VALUES(531, 'duplicate_post_copystatus', '0', 'yes');
INSERT INTO `wp_options` VALUES(532, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(533, 'duplicate_post_show_row', '1', 'yes');
INSERT INTO `wp_options` VALUES(534, 'duplicate_post_show_adminbar', '1', 'yes');
INSERT INTO `wp_options` VALUES(535, 'duplicate_post_show_submitbox', '1', 'yes');
INSERT INTO `wp_options` VALUES(536, 'duplicate_post_version', '2.4.1', 'yes');
INSERT INTO `wp_options` VALUES(541, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1361226633', 'yes');
INSERT INTO `wp_options` VALUES(542, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"3406";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"2207";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"2091";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"1732";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"1645";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1450";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1165";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1161";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1153";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1119";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1066";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:3:"983";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:3:"892";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:3:"836";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:3:"826";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:3:"767";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:3:"724";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:3:"719";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:3:"665";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"664";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"617";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"613";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"593";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"573";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"524";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"503";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"498";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"496";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"490";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"471";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"466";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"444";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"441";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"432";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"404";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"401";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"399";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"383";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"382";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"378";}}', 'yes');
INSERT INTO `wp_options` VALUES(545, '_site_transient_update_plugins', 'O:8:"stdClass":2:{s:12:"last_checked";i:1362936214;s:8:"response";a:2:{s:45:"taxonomy-terms-order/taxonomy-terms-order.php";O:8:"stdClass":5:{s:2:"id";s:5:"23884";s:4:"slug";s:20:"taxonomy-terms-order";s:11:"new_version";s:5:"1.3.0";s:3:"url";s:57:"http://wordpress.org/extend/plugins/taxonomy-terms-order/";s:7:"package";s:62:"http://downloads.wordpress.org/plugin/taxonomy-terms-order.zip";}s:47:"global-content-blocks/global-content-blocks.php";O:8:"stdClass":5:{s:2:"id";s:5:"19533";s:4:"slug";s:21:"global-content-blocks";s:11:"new_version";s:5:"1.5.6";s:3:"url";s:58:"http://wordpress.org/extend/plugins/global-content-blocks/";s:7:"package";s:69:"http://downloads.wordpress.org/plugin/global-content-blocks.1.5.6.zip";}}}', 'yes');
INSERT INTO `wp_options` VALUES(546, 'tadv_version', '3420', 'yes');
INSERT INTO `wp_options` VALUES(547, 'tadv_plugins', 'a:8:{i:0;s:5:"style";i:1;s:8:"emotions";i:2;s:5:"print";i:3;s:13:"searchreplace";i:4;s:10:"xhtmlxtras";i:5;s:7:"advlist";i:6;s:8:"advimage";i:7;s:11:"contextmenu";}', 'yes');
INSERT INTO `wp_options` VALUES(548, 'tadv_options', 'a:7:{s:8:"advlink1";i:0;s:8:"advimage";i:1;s:11:"editorstyle";i:0;s:11:"hideclasses";i:0;s:11:"contextmenu";i:1;s:8:"no_autop";i:1;s:7:"advlist";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(549, 'tadv_toolbars', 'a:4:{s:9:"toolbar_1";a:27:{i:0;s:4:"bold";i:1;s:6:"italic";i:2;s:13:"strikethrough";i:3;s:9:"underline";i:4;s:10:"separator1";i:5;s:7:"bullist";i:6;s:7:"numlist";i:7;s:7:"outdent";i:8;s:6:"indent";i:9;s:10:"separator2";i:10;s:11:"justifyleft";i:11;s:13:"justifycenter";i:12;s:12:"justifyright";i:13;s:10:"separator3";i:14;s:4:"link";i:15;s:6:"unlink";i:16;s:10:"separator4";i:17;s:5:"image";i:18;s:10:"styleprops";i:19;s:11:"separator12";i:20;s:7:"wp_more";i:21;s:7:"wp_page";i:22;s:10:"separator5";i:23;s:12:"spellchecker";i:24;s:6:"search";i:25;s:10:"separator6";i:26;s:10:"fullscreen";}s:9:"toolbar_2";a:22:{i:0;s:14:"fontsizeselect";i:1;s:12:"formatselect";i:2;s:9:"pastetext";i:3;s:9:"pasteword";i:4;s:12:"removeformat";i:5;s:10:"separator8";i:6;s:7:"charmap";i:7;s:5:"print";i:8;s:10:"separator9";i:9;s:9:"forecolor";i:10;s:9:"backcolor";i:11;s:8:"emotions";i:12;s:11:"separator10";i:13;s:3:"sup";i:14;s:3:"sub";i:15;s:5:"media";i:16;s:11:"separator11";i:17;s:4:"undo";i:18;s:4:"redo";i:19;s:7:"attribs";i:20;s:7:"wp_help";i:21;s:11:"styleselect";}s:9:"toolbar_3";a:0:{}s:9:"toolbar_4";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES(550, 'tadv_btns1', 'a:27:{i:0;s:4:"bold";i:1;s:6:"italic";i:2;s:13:"strikethrough";i:3;s:9:"underline";i:4;s:9:"separator";i:5;s:7:"bullist";i:6;s:7:"numlist";i:7;s:7:"outdent";i:8;s:6:"indent";i:9;s:9:"separator";i:10;s:11:"justifyleft";i:11;s:13:"justifycenter";i:12;s:12:"justifyright";i:13;s:9:"separator";i:14;s:4:"link";i:15;s:6:"unlink";i:16;s:9:"separator";i:17;s:5:"image";i:18;s:10:"styleprops";i:19;s:9:"separator";i:20;s:7:"wp_more";i:21;s:7:"wp_page";i:22;s:9:"separator";i:23;s:12:"spellchecker";i:24;s:6:"search";i:25;s:9:"separator";i:26;s:10:"fullscreen";}', 'no');
INSERT INTO `wp_options` VALUES(551, 'tadv_btns2', 'a:22:{i:0;s:14:"fontsizeselect";i:1;s:12:"formatselect";i:2;s:9:"pastetext";i:3;s:9:"pasteword";i:4;s:12:"removeformat";i:5;s:9:"separator";i:6;s:7:"charmap";i:7;s:5:"print";i:8;s:9:"separator";i:9;s:9:"forecolor";i:10;s:9:"backcolor";i:11;s:8:"emotions";i:12;s:9:"separator";i:13;s:3:"sup";i:14;s:3:"sub";i:15;s:5:"media";i:16;s:9:"separator";i:17;s:4:"undo";i:18;s:4:"redo";i:19;s:7:"attribs";i:20;s:7:"wp_help";i:21;s:11:"styleselect";}', 'no');
INSERT INTO `wp_options` VALUES(552, 'tadv_btns3', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES(553, 'tadv_btns4', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES(554, 'tadv_allbtns', 'a:66:{i:0;s:2:"hr";i:1;s:6:"wp_adv";i:2;s:10:"blockquote";i:3;s:4:"bold";i:4;s:6:"italic";i:5;s:13:"strikethrough";i:6;s:9:"underline";i:7;s:7:"bullist";i:8;s:7:"numlist";i:9;s:7:"outdent";i:10;s:6:"indent";i:11;s:11:"justifyleft";i:12;s:13:"justifycenter";i:13;s:12:"justifyright";i:14;s:11:"justifyfull";i:15;s:3:"cut";i:16;s:4:"copy";i:17;s:5:"paste";i:18;s:4:"link";i:19;s:6:"unlink";i:20;s:5:"image";i:21;s:7:"wp_more";i:22;s:7:"wp_page";i:23;s:6:"search";i:24;s:7:"replace";i:25;s:10:"fontselect";i:26;s:14:"fontsizeselect";i:27;s:7:"wp_help";i:28;s:10:"fullscreen";i:29;s:11:"styleselect";i:30;s:12:"formatselect";i:31;s:9:"forecolor";i:32;s:9:"backcolor";i:33;s:9:"pastetext";i:34;s:9:"pasteword";i:35;s:12:"removeformat";i:36;s:7:"cleanup";i:37;s:12:"spellchecker";i:38;s:7:"charmap";i:39;s:5:"print";i:40;s:4:"undo";i:41;s:4:"redo";i:42;s:13:"tablecontrols";i:43;s:4:"cite";i:44;s:3:"ins";i:45;s:3:"del";i:46;s:4:"abbr";i:47;s:7:"acronym";i:48;s:7:"attribs";i:49;s:5:"layer";i:50;s:5:"advhr";i:51;s:4:"code";i:52;s:11:"visualchars";i:53;s:11:"nonbreaking";i:54;s:3:"sub";i:55;s:3:"sup";i:56;s:9:"visualaid";i:57;s:10:"insertdate";i:58;s:10:"inserttime";i:59;s:6:"anchor";i:60;s:10:"styleprops";i:61;s:8:"emotions";i:62;s:5:"media";i:63;s:7:"iespell";i:64;s:9:"separator";i:65;s:1:"|";}', 'no');
INSERT INTO `wp_options` VALUES(558, '_site_transient_timeout_browser_2ca29150172eeab1cbc1e7dd944a91de', '1362334332', 'yes');
INSERT INTO `wp_options` VALUES(559, '_site_transient_browser_2ca29150172eeab1cbc1e7dd944a91de', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"16.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes');
INSERT INTO `wp_options` VALUES(590, '_transient_doing_cron', '1362936199.0974628925323486328125', 'yes');
INSERT INTO `wp_options` VALUES(591, '_site_transient_timeout_theme_roots', '1362938014', 'yes');
INSERT INTO `wp_options` VALUES(592, '_site_transient_theme_roots', 'a:3:{s:12:"alisonHarper";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');
INSERT INTO `wp_options` VALUES(593, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1362979416', 'no');
INSERT INTO `wp_options` VALUES(594, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>RSS Error</strong>: WP HTTP Error: Failed to connect to 74.125.228.82: Operation not permitted</p>', 'no');
INSERT INTO `wp_options` VALUES(595, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1362979417', 'no');
INSERT INTO `wp_options` VALUES(596, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Failed to connect to 72.233.56.138: Operation not permitted</p></div>', 'no');
INSERT INTO `wp_options` VALUES(597, '_transient_timeout_plugin_slugs', '1363022617', 'no');
INSERT INTO `wp_options` VALUES(598, '_transient_plugin_slugs', 'a:9:{i:0;s:19:"akismet/akismet.php";i:1;s:45:"taxonomy-terms-order/taxonomy-terms-order.php";i:2;s:33:"duplicate-post/duplicate-post.php";i:3;s:47:"global-content-blocks/global-content-blocks.php";i:4;s:9:"hello.php";i:5;s:51:"map-categories-to-pages/map-categories-to-pages.php";i:6;s:45:"simple-page-ordering/simple-page-ordering.php";i:7;s:37:"tinymce-advanced/tinymce-advanced.php";i:8;s:41:"wordpress-importer/wordpress-importer.php";}', 'no');
INSERT INTO `wp_options` VALUES(599, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1362979417', 'no');
INSERT INTO `wp_options` VALUES(600, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no');
INSERT INTO `wp_options` VALUES(601, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1362979446', 'no');
INSERT INTO `wp_options` VALUES(602, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Failed to connect to 72.233.56.138: Operation not permitted</p></div>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=324 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` VALUES(1, 2, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(4, 12, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(5, 12, '_wp_page_template', 'page-templates/alisonHarperHome.php');
INSERT INTO `wp_postmeta` VALUES(6, 15, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(7, 15, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(8, 16, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(9, 16, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(10, 19, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(11, 19, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(12, 53, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(13, 53, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(14, 55, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(15, 55, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(16, 67, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(17, 67, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(18, 68, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(19, 68, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(20, 12, '_edit_lock', '1361224488:1');
INSERT INTO `wp_postmeta` VALUES(21, 68, '_edit_lock', '1361226113:1');
INSERT INTO `wp_postmeta` VALUES(22, 15, '_edit_lock', '1358695977:1');
INSERT INTO `wp_postmeta` VALUES(23, 55, '_edit_lock', '1361736919:1');
INSERT INTO `wp_postmeta` VALUES(24, 2, '_edit_lock', '1358695996:1');
INSERT INTO `wp_postmeta` VALUES(25, 67, '_edit_lock', '1358793610:1');
INSERT INTO `wp_postmeta` VALUES(26, 53, '_edit_lock', '1358697171:1');
INSERT INTO `wp_postmeta` VALUES(27, 1, '_edit_lock', '1361057131:1');
INSERT INTO `wp_postmeta` VALUES(30, 12, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(31, 12, '_wp_page_template', 'page-templates/alisonHarperHome.php');
INSERT INTO `wp_postmeta` VALUES(32, 15, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(33, 15, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(34, 16, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(35, 16, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(36, 19, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(37, 19, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(38, 53, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(39, 53, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(40, 55, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(41, 55, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(44, 81, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(45, 81, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(48, 12, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(49, 12, '_wp_page_template', 'page-templates/alisonHarperHome.php');
INSERT INTO `wp_postmeta` VALUES(50, 15, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(51, 15, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(52, 16, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(53, 16, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(54, 19, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(55, 19, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(56, 84, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(57, 84, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(58, 55, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(59, 55, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(62, 81, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(63, 81, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(64, 84, '_edit_lock', '1361224605:1');
INSERT INTO `wp_postmeta` VALUES(67, 12, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(68, 12, '_wp_page_template', 'page-templates/alisonHarperHome.php');
INSERT INTO `wp_postmeta` VALUES(69, 15, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(70, 15, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(71, 16, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(72, 16, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(73, 19, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(74, 19, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(75, 84, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(76, 84, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(77, 55, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(78, 55, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(83, 81, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(84, 81, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(85, 93, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(86, 93, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(87, 95, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(88, 95, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(89, 98, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(90, 98, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(91, 100, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(92, 100, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(95, 12, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(96, 12, '_wp_page_template', 'page-templates/alisonHarperHome.php');
INSERT INTO `wp_postmeta` VALUES(97, 15, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(98, 15, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(99, 16, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(100, 16, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(101, 19, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(102, 19, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(103, 84, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(104, 84, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(105, 55, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(106, 55, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(111, 81, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(112, 81, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(113, 93, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(114, 93, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(115, 95, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(116, 95, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(117, 98, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(118, 98, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(119, 100, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(120, 100, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(123, 12, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(124, 12, '_wp_page_template', 'page-templates/alisonHarperHome.php');
INSERT INTO `wp_postmeta` VALUES(125, 15, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(126, 15, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(127, 16, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(128, 16, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(129, 19, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(130, 19, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(131, 84, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(132, 84, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(133, 55, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(134, 55, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(139, 81, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(140, 81, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(141, 93, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(142, 93, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(143, 95, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(144, 95, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(145, 98, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(146, 98, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(147, 100, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(148, 100, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(149, 124, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(150, 124, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(151, 124, '_dp_original', '16');
INSERT INTO `wp_postmeta` VALUES(154, 5, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(156, 12, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(157, 12, '_wp_page_template', 'page-templates/alisonHarperHome.php');
INSERT INTO `wp_postmeta` VALUES(158, 15, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(159, 15, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(160, 16, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(161, 16, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(162, 19, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(163, 19, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(164, 84, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(165, 84, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(166, 55, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(167, 55, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(172, 81, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(173, 81, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(174, 93, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(175, 93, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(176, 95, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(177, 95, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(178, 98, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(179, 98, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(180, 100, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(181, 100, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(182, 124, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(183, 124, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(184, 124, '_dp_original', '16');
INSERT INTO `wp_postmeta` VALUES(185, 143, '_wp_attached_file', '2013/01/logo1.jpg');
INSERT INTO `wp_postmeta` VALUES(186, 143, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:251;s:6:"height";i:151;s:4:"file";s:17:"2013/01/logo1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"logo1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(187, 144, '_wp_attached_file', '2013/01/map1.png');
INSERT INTO `wp_postmeta` VALUES(188, 144, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1195;s:6:"height";i:678;s:4:"file";s:16:"2013/01/map1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"map1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"map1-300x170.png";s:5:"width";i:300;s:6:"height";i:170;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:17:"map1-1024x580.png";s:5:"width";i:1024;s:6:"height";i:580;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(193, 5, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(195, 12, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(196, 12, '_wp_page_template', 'page-templates/alisonHarperHome.php');
INSERT INTO `wp_postmeta` VALUES(197, 15, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(198, 15, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(199, 16, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(200, 16, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(201, 19, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(202, 19, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(203, 84, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(204, 84, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(205, 55, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(206, 55, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(211, 81, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(212, 81, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(213, 93, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(214, 93, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(215, 95, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(216, 95, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(217, 98, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(218, 98, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(219, 100, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(220, 100, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(221, 124, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(222, 124, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(223, 124, '_dp_original', '16');
INSERT INTO `wp_postmeta` VALUES(224, 145, '_wp_attached_file', '2013/02/bride.jpg');
INSERT INTO `wp_postmeta` VALUES(225, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1100;s:6:"height";i:731;s:4:"file";s:17:"2013/02/bride.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"bride-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"bride-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"bride-1024x680.jpg";s:5:"width";i:1024;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(226, 145, '_wp_attachment_image_alt', 'hair, makeup, wedding');
INSERT INTO `wp_postmeta` VALUES(227, 166, '_wp_attached_file', '2013/01/6434885_orig.jpg');
INSERT INTO `wp_postmeta` VALUES(228, 166, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1100;s:6:"height";i:733;s:4:"file";s:24:"2013/01/6434885_orig.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"6434885_orig-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"6434885_orig-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"6434885_orig-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(229, 167, '_wp_attached_file', '2013/01/9177258_orig.jpg');
INSERT INTO `wp_postmeta` VALUES(230, 167, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1100;s:6:"height";i:733;s:4:"file";s:24:"2013/01/9177258_orig.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"9177258_orig-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"9177258_orig-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"9177258_orig-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(231, 168, '_wp_attached_file', '2013/01/9283632_orig.jpg');
INSERT INTO `wp_postmeta` VALUES(232, 168, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1100;s:6:"height";i:733;s:4:"file";s:24:"2013/01/9283632_orig.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"9283632_orig-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"9283632_orig-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"9283632_orig-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(233, 1, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(240, 1, '_thumbnail_id', '167');
INSERT INTO `wp_postmeta` VALUES(255, 5, '_edit_lock', '1361057126:1');
INSERT INTO `wp_postmeta` VALUES(256, 180, '_wp_attached_file', '2013/01/2661753_orig.jpg');
INSERT INTO `wp_postmeta` VALUES(257, 180, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1100;s:6:"height";i:733;s:4:"file";s:24:"2013/01/2661753_orig.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"2661753_orig-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"2661753_orig-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"2661753_orig-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(260, 5, '_thumbnail_id', '180');
INSERT INTO `wp_postmeta` VALUES(265, 184, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(266, 184, '_edit_lock', '1361057780:1');
INSERT INTO `wp_postmeta` VALUES(267, 185, '_wp_attached_file', '2013/02/1820987_orig.jpg');
INSERT INTO `wp_postmeta` VALUES(268, 185, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:533;s:6:"height";i:800;s:4:"file";s:24:"2013/02/1820987_orig.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"1820987_orig-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"1820987_orig-199x300.jpg";s:5:"width";i:199;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(269, 184, '_thumbnail_id', '185');
INSERT INTO `wp_postmeta` VALUES(276, 1, '_pingme', '1');
INSERT INTO `wp_postmeta` VALUES(277, 1, '_encloseme', '1');
INSERT INTO `wp_postmeta` VALUES(278, 2, '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES(279, 2, '_wp_trash_meta_time', '1361059939');
INSERT INTO `wp_postmeta` VALUES(280, 93, '_edit_lock', '1361060263:1');
INSERT INTO `wp_postmeta` VALUES(281, 124, '_edit_lock', '1361060211:1');
INSERT INTO `wp_postmeta` VALUES(282, 53, '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES(283, 53, '_wp_trash_meta_time', '1361060287');
INSERT INTO `wp_postmeta` VALUES(284, 67, '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES(285, 67, '_wp_trash_meta_time', '1361060293');
INSERT INTO `wp_postmeta` VALUES(294, 19, '_edit_lock', '1361213824:1');
INSERT INTO `wp_postmeta` VALUES(295, 81, '_edit_lock', '1361060692:1');
INSERT INTO `wp_postmeta` VALUES(296, 98, '_edit_lock', '1361226277:1');
INSERT INTO `wp_postmeta` VALUES(297, 212, '_wp_attached_file', '2013/02/2092093_orig.jpg');
INSERT INTO `wp_postmeta` VALUES(298, 212, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:630;s:6:"height";i:800;s:4:"file";s:24:"2013/02/2092093_orig.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"2092093_orig-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"2092093_orig-236x300.jpg";s:5:"width";i:236;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(299, 213, '_wp_attached_file', '2013/02/2179995_orig.jpg');
INSERT INTO `wp_postmeta` VALUES(300, 213, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:933;s:6:"height";i:622;s:4:"file";s:24:"2013/02/2179995_orig.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"2179995_orig-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"2179995_orig-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:1.600000000000000088817841970012523233890533447265625;s:6:"credit";s:19:"PhotOle Photography";s:6:"camera";s:12:"Canon EOS 5D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1327432501;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:4:"1600";s:13:"shutter_speed";s:15:"0.0166666666667";s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(301, 214, '_wp_attached_file', '2013/02/4302358.jpg');
INSERT INTO `wp_postmeta` VALUES(302, 214, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:549;s:6:"height";i:354;s:4:"file";s:19:"2013/02/4302358.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"4302358-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"4302358-300x193.jpg";s:5:"width";i:300;s:6:"height";i:193;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(303, 215, '_wp_attached_file', '2013/02/7520024_orig.jpg');
INSERT INTO `wp_postmeta` VALUES(304, 215, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1010;s:6:"height";i:800;s:4:"file";s:24:"2013/02/7520024_orig.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"7520024_orig-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"7520024_orig-300x237.jpg";s:5:"width";i:300;s:6:"height";i:237;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(305, 213, '_wp_attachment_image_alt', 'Alison');
INSERT INTO `wp_postmeta` VALUES(306, 212, '_wp_attachment_image_alt', 'Alison wedding dress');
INSERT INTO `wp_postmeta` VALUES(307, 227, '_wp_attached_file', '2013/02/7516767_orig.jpg');
INSERT INTO `wp_postmeta` VALUES(308, 227, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1100;s:6:"height";i:731;s:4:"file";s:24:"2013/02/7516767_orig.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"7516767_orig-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"7516767_orig-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"7516767_orig-1024x680.jpg";s:5:"width";i:1024;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(309, 230, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(310, 230, '_edit_lock', '1361227869:1');
INSERT INTO `wp_postmeta` VALUES(311, 230, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(312, 233, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(313, 233, '_edit_lock', '1361226835:1');
INSERT INTO `wp_postmeta` VALUES(314, 233, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(315, 233, '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES(316, 233, '_wp_trash_meta_time', '1361227025');
INSERT INTO `wp_postmeta` VALUES(317, 241, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(318, 241, '_edit_lock', '1361739595:1');
INSERT INTO `wp_postmeta` VALUES(319, 241, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(320, 243, '_wp_attached_file', '2013/02/featured.jpg');
INSERT INTO `wp_postmeta` VALUES(321, 243, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:513;s:6:"height";i:341;s:4:"file";s:20:"2013/02/featured.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"featured-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"featured-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(322, 243, '_wp_attachment_image_alt', 'hair and makeup model');
INSERT INTO `wp_postmeta` VALUES(323, 241, '_thumbnail_id', '243');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=245 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` VALUES(1, 1, '2013-01-19 04:21:29', '2013-01-19 04:21:29', 'Oh this lovely, lovely Valentines day; I wanted to share Meredith''s wedding. I''m not sure why I saved their wedding for today. I kept thinking; what will I post? I need red, pink, love -lots of love. For some reason I kept thinking about Meredith &amp; Chris and all these beautiful photos. I don''t know about the red but there was some serious love happening and the bridesmaids were sporting some beautiful pink dresses. Close enough? Meredith and her ladies got ready at the beautiful Lansdowne Resort. Champagne, laughing. It was a beautiful, perfect day. Thank you Meredith for inviting us in. I hope you and Chris are having a fabulous Valentines!\r\nXo,\r\nAlison\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg"><img class="alignnone size-full wp-image-166" alt="6434885_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg" width="1100" height="733" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg"><img class="alignnone size-full wp-image-167" alt="9177258_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg" width="1100" height="733" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg"><img class="alignnone size-full wp-image-168" alt="9283632_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg" width="1100" height="733" /></a><code></code>', 'Real Wedding: Meredith and Chris', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2013-02-16 23:25:31', '2013-02-16 23:25:31', '', 0, 'http://alisonharper.dev/?p=1', 0, 'post', '', 2);
INSERT INTO `wp_posts` VALUES(2, 1, '2013-01-19 04:21:29', '2013-01-19 04:21:29', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://alisonharper.dev/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2013-02-17 00:12:19', '2013-02-17 00:12:19', '', 0, 'http://alisonharper.dev/?page_id=2', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(5, 1, '2013-01-12 20:23:20', '2013-01-12 20:23:20', 'Hannah! Oh sweet Hannah. She and Mark were married this past July. Yes, I am way behind in my blogging. However, it does make you think of beautiful, roll the windows down weather, doesn''t it? Anyhow, Hannah and Mark were married at the Naval Academy in Annapolis with their reception at the waterfront Marriott. It was a beautiful, classic, military wedding. Those are the dearest to my heart. I have to tell you that when I receive the photos of her wedding, there were about 10 of Hannah laughing. She was so sweet, and very, very happy. Oh and Beautiful.\r\nXo, \r\nAlison\r\n\r\n', 'Real Wedding: Hannah and Mark', '', 'publish', 'open', 'open', '', 'hello-world-2', '', '', '2013-02-16 23:25:26', '2013-02-16 23:25:26', '', 0, 'http://alisonharper.dev/?p=1', 0, 'post', '', 1);
INSERT INTO `wp_posts` VALUES(12, 1, '2013-01-12 21:28:37', '2013-01-12 21:28:37', '<!-- Main hero unit for a primary marketing message or call to action -->\n<div class="hero-unit">\n<h1>Hello, world!</h1>\nThis is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.\n\n<a class="btn btn-primary btn-large">Learn more »</a>\n\n</div>\n<!-- Example row of columns -->\n<div class="row">\n<div class="span4">\n<h2>Heading</h2>\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\n\n<a class="btn" href="#">View details »</a>\n\n</div>\n<div class="span4">\n<h2>Heading</h2>\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\n\n<a class="btn" href="#">View details »</a>\n\n</div>\n<div class="span4">\n<h2>New header</h2>\nDonec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. This is new text\n\n<a class="btn" href="#">View details »</a>\n\n</div>\n</div>', 'Home', '', 'publish', 'open', 'closed', '', 'home', '', '', '2013-02-17 00:17:25', '2013-02-17 00:17:25', '', 0, 'http://alisonharper.dev/?page_id=12', 1, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(15, 1, '2013-01-12 21:32:58', '2013-01-12 21:32:58', '<div id="section1">Test Section 1</div>\n<div id="section2">What happens?</div>', 'About', '', 'publish', 'open', 'closed', '', 'about', '', '', '2013-02-17 00:24:32', '2013-02-17 00:24:32', '', 0, 'http://alisonharper.dev/?page_id=15', 3, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(16, 1, '2013-01-12 21:33:07', '2013-01-12 21:33:07', '', 'Contact Us', '', 'publish', 'open', 'closed', '', 'contact-us', '', '', '2013-02-17 00:24:40', '2013-02-17 00:24:40', '', 0, 'http://alisonharper.dev/?page_id=16', 5, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(19, 1, '2013-01-12 22:00:03', '2013-01-12 22:00:03', '', 'Blog', '', 'publish', 'open', 'closed', '', 'blog', '', '', '2013-02-17 00:24:40', '2013-02-17 00:24:40', '', 0, 'http://alisonharper.dev/?page_id=19', 6, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(53, 1, '2013-01-13 17:16:15', '2013-01-13 17:16:15', 'Test Content please show up', 'Maryland', '', 'trash', 'open', 'closed', '', 'maryland-2', '', '', '2013-02-17 00:18:07', '2013-02-17 00:18:07', '', 0, 'http://alisonharper.dev/?page_id=53', 3, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(55, 1, '2013-01-13 18:05:21', '2013-01-13 18:05:21', '[contentblock id=20]', 'Services', '', 'publish', 'open', 'closed', '', 'services', '', '', '2013-02-24 19:01:06', '2013-02-24 19:01:06', '', 84, 'http://alisonharper.dev/?page_id=55', 3, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(67, 1, '2013-01-19 00:43:28', '2013-01-19 00:43:28', '', 'Common', '', 'trash', 'open', 'open', '', 'common', '', '', '2013-02-17 00:18:13', '2013-02-17 00:18:13', '', 0, 'http://alisonharper.dev/?page_id=67', 4, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(68, 1, '2013-01-19 00:44:19', '2013-01-19 00:44:19', '<p>[contentblock id=4]</p>\r\n', 'Meet Alison Harper', '', 'publish', 'open', 'closed', '', 'alison', '', '', '2013-02-18 22:23:46', '2013-02-18 22:23:46', '', 98, 'http://alisonharper.dev/?page_id=68', 1, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(69, 1, '2013-01-19 04:35:34', '2013-01-19 04:35:34', '<!-- Main hero unit for a primary marketing message or call to action -->\n<div class="hero-unit">\n<h1>Hello, world!</h1>\nThis is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.\n\n<a class="btn btn-primary btn-large">Learn more »</a>\n\n</div>\n<!-- Example row of columns -->\n<div class="row">\n<div class="span4">\n<h2>Heading</h2>\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\n\n<a class="btn" href="#">View details »</a>\n\n</div>\n<div class="span4">\n<h2>Heading</h2>\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\n\n<a class="btn" href="#">View details »</a>\n\n</div>\n<div class="span4">\n<h2>New header</h2>\nDonec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. This is new text\n\n<a class="btn" href="#">View details »</a>\n\n</div>\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '12-autosave', '', '', '2013-01-19 04:35:34', '2013-01-19 04:35:34', '', 12, 'http://alisonharper.dev/?p=69', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(70, 1, '2013-02-18 19:46:10', '2013-02-18 19:46:10', '<p>[contentblock id=4]</p>', 'Meet Alison Harper', '', 'inherit', 'open', 'open', '', '68-autosave', '', '', '2013-02-18 19:46:10', '2013-02-18 19:46:10', '', 68, 'http://alisonharper.dev/68-autosave/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(73, 1, '2013-02-16 22:52:57', '2013-02-16 22:52:57', 'Oh this lovely, lovely Valentines day; I wanted to share Meredith''s wedding. I''m not sure why I saved their wedding for today. I kept thinking; what will I post? I need red, pink, love -lots of love. For some reason I kept thinking about Meredith &amp; Chris and all these beautiful photos. I don''t know about the red but there was some serious love happening and the bridesmaids were sporting some beautiful pink dresses. Close enough? Meredith and her ladies got ready at the beautiful Lansdowne Resort. Champagne, laughing. It was a beautiful, perfect day. Thank you Meredith for inviting us in. I hope you and Chris are having a fabulous Valentines!\nXo,\nAlison\n\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg"><img class="alignnone size-full wp-image-166" alt="6434885_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg" width="1100" height="733" /></a>\n\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg"><img class="alignnone size-full wp-image-167" alt="9177258_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg" width="1100" height="733" /></a>\n\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg"><img class="alignnone size-full wp-image-168" alt="9283632_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg" width="1100" height="733" /></a><code></code>', 'Real Wedding: Meredith and Chris', '', 'inherit', 'open', 'open', '', '1-autosave', '', '', '2013-02-16 22:52:57', '2013-02-16 22:52:57', '', 1, 'http://alisonharper.dev/1-autosave/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(81, 1, '2013-01-21 19:53:07', '2013-01-21 19:53:07', '', 'Career Opportunities', '', 'publish', 'open', 'closed', '', 'careers', '', '', '2013-02-17 00:24:52', '2013-02-17 00:24:52', '', 84, 'http://alisonharper.dev/?page_id=81', 6, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(82, 1, '2013-01-12 21:28:37', '2013-01-12 21:28:37', '<!-- Main hero unit for a primary marketing message or call to action -->\n<div class="hero-unit">\n<h1>Hello, world!</h1>\nThis is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.\n\n<a class="btn btn-primary btn-large">Learn more »</a>\n\n</div>\n<!-- Example row of columns -->\n<div class="row">\n<div class="span4">\n<h2>Heading</h2>\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\n\n<a class="btn" href="#">View details »</a>\n\n</div>\n<div class="span4">\n<h2>Heading</h2>\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\n\n<a class="btn" href="#">View details »</a>\n\n</div>\n<div class="span4">\n<h2>New header</h2>\nDonec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. This is new text\n\n<a class="btn" href="#">View details »</a>\n\n</div>\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '12-revision', '', '', '2013-01-12 21:28:37', '2013-01-12 21:28:37', '', 12, 'http://alisonharper.dev/12-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(84, 1, '2013-01-13 17:16:15', '2013-01-13 17:16:15', '\r\n[contentblock id=3]\r\n\r\n', 'Baltimore', '', 'publish', 'open', 'closed', '', 'baltimore', '', '', '2013-02-17 00:17:02', '2013-02-17 00:17:02', '', 100, 'http://alisonharper.dev/?page_id=53', 2, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(85, 1, '2013-02-16 21:42:50', '2013-02-16 21:42:50', '<figure class="mainHome"><a href="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg"><img class=" wp-image-145   " alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="85%" /></a></figure>\n\n<article class="column">\n[contentblock id=3]\n\n</article>\n<article class="column">\n</article>', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-autosave', '', '', '2013-02-16 21:42:50', '2013-02-16 21:42:50', '', 84, 'http://alisonharper.dev/84-autosave/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(93, 1, '2013-01-22 01:04:38', '2013-01-22 01:04:38', '', 'Portfolio', '', 'publish', 'open', 'closed', '', 'portfolio', '', '', '2013-02-17 00:21:28', '2013-02-17 00:21:28', '', 84, 'http://alisonharper.dev/?page_id=93', 2, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(95, 1, '2013-01-22 01:04:59', '2013-01-22 01:04:59', '', 'Portfolio', '', 'publish', 'open', 'open', '', 'portfolio', '', '', '2013-02-17 00:24:40', '2013-02-17 00:24:40', '', 0, 'http://alisonharper.dev/?page_id=95', 4, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(98, 1, '2013-01-22 01:06:30', '2013-01-22 01:06:30', '<p>[contentblock id=6]</p>', 'About', '', 'publish', 'open', 'closed', '', 'about', '', '', '2013-02-18 22:23:57', '2013-02-18 22:23:57', '', 84, 'http://alisonharper.dev/?page_id=98', 1, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(100, 1, '2013-01-22 01:07:43', '2013-01-22 01:07:43', '', 'Maryland', '', 'publish', 'open', 'closed', '', 'maryland', '', '', '2013-02-17 00:17:25', '2013-02-17 00:17:25', '', 0, 'http://alisonharper.dev/?page_id=100', 2, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(124, 1, '2013-01-26 01:49:27', '2013-01-26 01:49:27', '', 'Contact Us', '', 'publish', 'open', 'closed', '', 'contact-us', '', '', '2013-02-17 00:21:23', '2013-02-17 00:21:23', '', 84, 'http://alisonharper.dev/?page_id=124', 5, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(125, 1, '2013-01-13 17:16:15', '2013-01-13 17:16:15', 'Test Content please show up', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision', '', '', '2013-01-13 17:16:15', '2013-01-13 17:16:15', '', 84, 'http://alisonharper.dev/84-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(143, 1, '2013-01-26 16:41:55', '2013-01-26 16:41:55', '', 'logo', '', 'inherit', 'open', 'open', '', 'logo', '', '', '2013-01-26 16:41:55', '2013-01-26 16:41:55', '', 84, 'http://alisonHarper.dev/wp-content/uploads/2013/01/logo1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES(144, 1, '2013-01-26 16:42:13', '2013-01-26 16:42:13', '', '', '', 'inherit', 'open', 'open', '', 'map', '', '', '2013-01-26 16:42:13', '2013-01-26 16:42:13', '', 84, 'http://alisonHarper.dev/wp-content/uploads/2013/01/map1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(145, 1, '2013-02-16 20:48:31', '2013-02-16 20:48:31', 'Bride and bridesmaids pose for the camera', 'bride', 'Photographer: Amazing Lady', 'inherit', 'open', 'open', '', 'bride', '', '', '2013-02-16 20:48:31', '2013-02-16 20:48:31', '', 84, 'http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES(146, 1, '2013-01-26 05:08:33', '2013-01-26 05:08:33', 'Test Content please show up', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-2', '', '', '2013-01-26 05:08:33', '2013-01-26 05:08:33', '', 84, 'http://alisonHarper.dev/84-revision-2/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(147, 1, '2013-02-16 20:53:40', '2013-02-16 20:53:40', '[caption id="attachment_145" align="alignnone" width="1100"]<img class="size-full wp-image-145" alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="1100" height="731" /> Photographer: Amazing Lady[/caption]', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-3', '', '', '2013-02-16 20:53:40', '2013-02-16 20:53:40', '', 84, 'http://alisonHarper.dev/84-revision-3/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(148, 1, '2013-02-16 20:54:15', '2013-02-16 20:54:15', '[caption id="attachment_145" align="alignnone" width="880"]<img class=" wp-image-145 " alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="880" height="585" /> Photographer: Amazing Lady[/caption]', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-4', '', '', '2013-02-16 20:54:15', '2013-02-16 20:54:15', '', 84, 'http://alisonHarper.dev/84-revision-4/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(149, 1, '2013-02-16 20:56:25', '2013-02-16 20:56:25', '[caption id="attachment_145" align="alignnone" width="880"]<img class=" wp-image-145   " alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="880" height="585" /> Photographer: Amazing Lady[/caption]', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-5', '', '', '2013-02-16 20:56:25', '2013-02-16 20:56:25', '', 84, 'http://alisonHarper.dev/84-revision-5/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(150, 1, '2013-02-16 21:03:56', '2013-02-16 21:03:56', '[caption id="attachment_145" align="alignnone" width="880"]<img class=" wp-image-145   " alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="880" height="585" /> Photographer: Amazing Lady[/caption]\r\n\r\n[contentblock id=3]', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-6', '', '', '2013-02-16 21:03:56', '2013-02-16 21:03:56', '', 84, 'http://alisonHarper.dev/84-revision-6/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(151, 1, '2013-02-16 21:04:23', '2013-02-16 21:04:23', '[caption id="attachment_145" align="alignnone" width="704"]<img class=" wp-image-145    " alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="704" height="468" /> Photographer: Amazing Lady[/caption]\r\n\r\n[contentblock id=3]', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-7', '', '', '2013-02-16 21:04:23', '2013-02-16 21:04:23', '', 84, 'http://alisonHarper.dev/84-revision-7/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(152, 1, '2013-02-16 21:17:43', '2013-02-16 21:17:43', '<img class=" wp-image-145     " alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="78%" height="22%" />\r\n\r\n[contentblock id=3]', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-8', '', '', '2013-02-16 21:17:43', '2013-02-16 21:17:43', '', 84, 'http://alisonHarper.dev/84-revision-8/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(153, 1, '2013-02-16 21:25:46', '2013-02-16 21:25:46', '<img class=" wp-image-145     " alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="78%" height="22%" />\r\n\r\n<figure class="mainHome">[contentblock id=3]</div>', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-9', '', '', '2013-02-16 21:25:46', '2013-02-16 21:25:46', '', 84, 'http://alisonHarper.dev/84-revision-9/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(154, 1, '2013-02-16 21:26:10', '2013-02-16 21:26:10', '<img class=" wp-image-145     " alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="78%" height="22%" />\r\n\r\n<figure class="mainHome">[contentblock id=3]</div>', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-10', '', '', '2013-02-16 21:26:10', '2013-02-16 21:26:10', '', 84, 'http://alisonHarper.dev/84-revision-10/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(155, 1, '2013-02-16 21:27:05', '2013-02-16 21:27:05', '<figure class="mainHome" alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="78%" height="22%" </figure>\r\n\r\n<p>[contentblock id=3]</p>', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-11', '', '', '2013-02-16 21:27:05', '2013-02-16 21:27:05', '', 84, 'http://alisonHarper.dev/84-revision-11/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(156, 1, '2013-02-16 21:29:05', '2013-02-16 21:29:05', '[caption id="attachment_145" align="alignnone" width="1100"]<a href="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" alt="hair, makeup, wedding" width="1100" height="731" class="size-full wp-image-145" /></a> Photographer: Amazing Lady[/caption]\r\n\r\n<p>[contentblock id=3]</p>\r\n\r\n', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-12', '', '', '2013-02-16 21:29:05', '2013-02-16 21:29:05', '', 84, 'http://alisonHarper.dev/84-revision-12/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(157, 1, '2013-02-16 21:29:35', '2013-02-16 21:29:35', '<figure class="mainHome">[caption id="attachment_145" align="alignnone" width="1100"]<a href="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" alt="hair, makeup, wedding" width="1100" height="731" class="size-full wp-image-145" /></a> Photographer: Amazing Lady[/caption]</figure>\r\n\r\n<p>[contentblock id=3]</p>\r\n\r\n', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-13', '', '', '2013-02-16 21:29:35', '2013-02-16 21:29:35', '', 84, 'http://alisonHarper.dev/84-revision-13/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(158, 1, '2013-02-16 21:30:50', '2013-02-16 21:30:50', '<figure class="mainHome">[caption id="attachment_145" align="alignnone" width="1100"]<a href="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" alt="hair, makeup, wedding" width="1100" height="731" class="size-full wp-image-145" /></a> Photographer: Amazing Lady[/caption]</figure>\r\n\r\n<p>[contentblock id=3]</p>\r\n\r\n', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-14', '', '', '2013-02-16 21:30:50', '2013-02-16 21:30:50', '', 84, 'http://alisonHarper.dev/84-revision-14/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(159, 1, '2013-02-16 21:32:06', '2013-02-16 21:32:06', '<figure class="mainHome">\r\n\r\n[caption id="attachment_145" align="alignnone" width="990"]<a href="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg"><img class=" wp-image-145 " alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="990" height="658" /></a> Photographer: Amazing Lady[/caption]\r\n\r\n</figure>[contentblock id=3]', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-15', '', '', '2013-02-16 21:32:06', '2013-02-16 21:32:06', '', 84, 'http://alisonHarper.dev/84-revision-15/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(160, 1, '2013-02-16 21:32:34', '2013-02-16 21:32:34', '<figure class="mainHome">\r\n\r\n[caption id="attachment_145" align="alignnone" width="792"]<a href="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg"><img class=" wp-image-145  " alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="792" height="526" /></a> Photographer: Amazing Lady[/caption]\r\n\r\n</figure>[contentblock id=3]', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-16', '', '', '2013-02-16 21:32:34', '2013-02-16 21:32:34', '', 84, 'http://alisonHarper.dev/84-revision-16/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(161, 1, '2013-02-16 21:32:56', '2013-02-16 21:32:56', '<figure class="mainHome"><a href="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg"><img class=" wp-image-145   " alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="85%" /></a>\r\n\r\n</figure>[contentblock id=3]', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-17', '', '', '2013-02-16 21:32:56', '2013-02-16 21:32:56', '', 84, 'http://alisonHarper.dev/84-revision-17/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(162, 1, '2013-02-16 21:33:49', '2013-02-16 21:33:49', '<figure class="mainHome"><a href="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg"><img class=" wp-image-145   " alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="85%" /></a></figure>\r\n<p>[contentblock id=3]</p>', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-18', '', '', '2013-02-16 21:33:49', '2013-02-16 21:33:49', '', 84, 'http://alisonHarper.dev/84-revision-18/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(163, 1, '2013-02-16 21:44:12', '2013-02-16 21:44:12', '<figure class="mainHome"><a href="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg"><img class=" wp-image-145   " alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="85%" /></a></figure>\r\n\r\n<article class="column">\r\n[contentblock id=3]\r\n\r\n</article>\r\n<article class="column">test testing\r\n</article>', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-19', '', '', '2013-02-16 21:44:12', '2013-02-16 21:44:12', '', 84, 'http://alisonHarper.dev/84-revision-19/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(164, 1, '2013-02-16 21:50:29', '2013-02-16 21:50:29', '<figure class="mainHome"><a href="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg"><img class=" wp-image-145   " alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="85%" /></a></figure>\r\n\r\n\r\n[contentblock id=3]\r\n\r\n', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-20', '', '', '2013-02-16 21:50:29', '2013-02-16 21:50:29', '', 84, 'http://alisonHarper.dev/84-revision-20/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(165, 1, '2013-02-16 21:53:20', '2013-02-16 21:53:20', '<figure class="mainHome"><a href="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg"><img class=" wp-image-145   " alt="hair, makeup, wedding" src="http://alisonHarper.dev/wp-content/uploads/2013/02/bride.jpg" width="85%" /></a></figure>\r\n\r\n\r\n[contentblock id=3]\r\n\r\n', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-21', '', '', '2013-02-16 21:53:20', '2013-02-16 21:53:20', '', 84, 'http://alisonHarper.dev/84-revision-21/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(166, 1, '2013-02-16 22:23:49', '2013-02-16 22:23:49', '', '6434885_orig', '', 'inherit', 'open', 'open', '', '6434885_orig', '', '', '2013-02-16 22:23:49', '2013-02-16 22:23:49', '', 1, 'http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES(167, 1, '2013-02-16 22:23:49', '2013-02-16 22:23:49', '', '9177258_orig', '', 'inherit', 'open', 'open', '', '9177258_orig', '', '', '2013-02-16 22:23:49', '2013-02-16 22:23:49', '', 1, 'http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES(168, 1, '2013-02-16 22:23:50', '2013-02-16 22:23:50', '', '9283632_orig', '', 'inherit', 'open', 'open', '', '9283632_orig', '', '', '2013-02-16 22:23:50', '2013-02-16 22:23:50', '', 1, 'http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES(169, 1, '2013-01-19 04:21:29', '2013-01-19 04:21:29', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision', '', '', '2013-01-19 04:21:29', '2013-01-19 04:21:29', '', 1, 'http://alisonHarper.dev/1-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(170, 1, '2013-02-16 22:24:21', '2013-02-16 22:24:21', 'Oh this lovely, lovely Valentines day; I wanted to share Meredith''s wedding. I''m not sure why I saved their wedding for today. I kept thinking; what will I post? I need red, pink, love -lots of love. For some reason I kept thinking about Meredith & Chris and all these beautiful photos. I don''t know about the red but there was some serious love happening and the bridesmaids were sporting some beautiful pink dresses. Close enough? Meredith and her ladies got ready at the beautiful Lansdowne Resort. Champagne, laughing. It was a beautiful, perfect day. Thank you Meredith for inviting us in. I hope you and Chris are having a fabulous Valentines! \r\nXo, \r\nAlison\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg" alt="6434885_orig" width="1100" height="733" class="alignnone size-full wp-image-166" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg" alt="9177258_orig" width="1100" height="733" class="alignnone size-full wp-image-167" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg" alt="9283632_orig" width="1100" height="733" class="alignnone size-full wp-image-168" /></a>', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-2', '', '', '2013-02-16 22:24:21', '2013-02-16 22:24:21', '', 1, 'http://alisonHarper.dev/1-revision-2/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(171, 1, '2013-02-16 22:25:05', '2013-02-16 22:25:05', 'Oh this lovely, lovely Valentines day; I wanted to share Meredith''s wedding. I''m not sure why I saved their wedding for today. I kept thinking; what will I post? I need red, pink, love -lots of love. For some reason I kept thinking about Meredith & Chris and all these beautiful photos. I don''t know about the red but there was some serious love happening and the bridesmaids were sporting some beautiful pink dresses. Close enough? Meredith and her ladies got ready at the beautiful Lansdowne Resort. Champagne, laughing. It was a beautiful, perfect day. Thank you Meredith for inviting us in. I hope you and Chris are having a fabulous Valentines! \r\nXo, \r\nAlison\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg" alt="6434885_orig" width="1100" height="733" class="alignnone size-full wp-image-166" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg" alt="9177258_orig" width="1100" height="733" class="alignnone size-full wp-image-167" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg" alt="9283632_orig" width="1100" height="733" class="alignnone size-full wp-image-168" /></a>', 'Real Wedding: Meredith and Chris', '', 'inherit', 'open', 'open', '', '1-revision-3', '', '', '2013-02-16 22:25:05', '2013-02-16 22:25:05', '', 1, 'http://alisonHarper.dev/1-revision-3/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(172, 1, '2013-02-16 22:26:08', '2013-02-16 22:26:08', 'Oh this lovely, lovely Valentines day; I wanted to share Meredith''s wedding. I''m not sure why I saved their wedding for today. I kept thinking; what will I post? I need red, pink, love -lots of love. For some reason I kept thinking about Meredith & Chris and all these beautiful photos. I don''t know about the red but there was some serious love happening and the bridesmaids were sporting some beautiful pink dresses. Close enough? Meredith and her ladies got ready at the beautiful Lansdowne Resort. Champagne, laughing. It was a beautiful, perfect day. Thank you Meredith for inviting us in. I hope you and Chris are having a fabulous Valentines! \r\nXo, \r\nAlison\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg" alt="6434885_orig" width="1100" height="733" class="alignnone size-full wp-image-166" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg" alt="9177258_orig" width="1100" height="733" class="alignnone size-full wp-image-167" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg" alt="9283632_orig" width="1100" height="733" class="alignnone size-full wp-image-168" /></a>', 'Real Wedding: Meredith and Chris', '', 'inherit', 'open', 'open', '', '1-revision-4', '', '', '2013-02-16 22:26:08', '2013-02-16 22:26:08', '', 1, 'http://alisonHarper.dev/1-revision-4/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(173, 1, '2013-02-16 22:34:13', '2013-02-16 22:34:13', 'Oh this lovely, lovely Valentines day; I wanted to share Meredith''s wedding. I''m not sure why I saved their wedding for today. I kept thinking; what will I post? I need red, pink, love -lots of love. For some reason I kept thinking about Meredith & Chris and all these beautiful photos. I don''t know about the red but there was some serious love happening and the bridesmaids were sporting some beautiful pink dresses. Close enough? Meredith and her ladies got ready at the beautiful Lansdowne Resort. Champagne, laughing. It was a beautiful, perfect day. Thank you Meredith for inviting us in. I hope you and Chris are having a fabulous Valentines! \r\nXo, \r\nAlison\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg" alt="6434885_orig" width="1100" height="733" class="alignnone size-full wp-image-166" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg" alt="9177258_orig" width="1100" height="733" class="alignnone size-full wp-image-167" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg" alt="9283632_orig" width="1100" height="733" class="alignnone size-full wp-image-168" /></a>', 'Real Wedding: Meredith and Chris', '', 'inherit', 'open', 'open', '', '1-revision-5', '', '', '2013-02-16 22:34:13', '2013-02-16 22:34:13', '', 1, 'http://alisonHarper.dev/1-revision-5/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(174, 1, '2013-02-16 22:47:58', '2013-02-16 22:47:58', 'Oh this lovely, lovely Valentines day; I wanted to share Meredith''s wedding. I''m not sure why I saved their wedding for today. I kept thinking; what will I post? I need red, pink, love -lots of love. For some reason I kept thinking about Meredith &amp; Chris and all these beautiful photos. I don''t know about the red but there was some serious love happening and the bridesmaids were sporting some beautiful pink dresses. Close enough? Meredith and her ladies got ready at the beautiful Lansdowne Resort. Champagne, laughing. It was a beautiful, perfect day. Thank you Meredith for inviting us in. I hope you and Chris are having a fabulous Valentines!\r\nXo,\r\nAlison\r\n<p><a href="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg"><img class="alignnone size-full wp-image-166" alt="6434885_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg" width="1100" height="733" /></a></p>\r\n\r\n<p><a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg"><img class="alignnone size-full wp-image-167" alt="9177258_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg" width="1100" height="733" /></a></p>\r\n\r\n<p><a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg"><img class="alignnone size-full wp-image-168" alt="9283632_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg" width="1100" height="733" /></a></p>', 'Real Wedding: Meredith and Chris', '', 'inherit', 'open', 'open', '', '1-revision-6', '', '', '2013-02-16 22:47:58', '2013-02-16 22:47:58', '', 1, 'http://alisonHarper.dev/1-revision-6/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(175, 1, '2013-02-16 22:48:25', '2013-02-16 22:48:25', 'Oh this lovely, lovely Valentines day; I wanted to share Meredith''s wedding. I''m not sure why I saved their wedding for today. I kept thinking; what will I post? I need red, pink, love -lots of love. For some reason I kept thinking about Meredith &amp; Chris and all these beautiful photos. I don''t know about the red but there was some serious love happening and the bridesmaids were sporting some beautiful pink dresses. Close enough? Meredith and her ladies got ready at the beautiful Lansdowne Resort. Champagne, laughing. It was a beautiful, perfect day. Thank you Meredith for inviting us in. I hope you and Chris are having a fabulous Valentines!\r\nXo,\r\nAlison\r\n<p><a href="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg"><img class="alignnone size-full wp-image-166" alt="6434885_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg" width="1100" height="733" /></a></p>\r\n\r\n<p><a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg"><img class="alignnone size-full wp-image-167" alt="9177258_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg" width="1100" height="733" /></a></p>\r\n\r\n<p><a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg"><img class="alignnone size-full wp-image-168" alt="9283632_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg" width="1100" height="733" /></a></p>', 'Real Wedding: Meredith and Chris', '', 'inherit', 'open', 'open', '', '1-revision-7', '', '', '2013-02-16 22:48:25', '2013-02-16 22:48:25', '', 1, 'http://alisonHarper.dev/1-revision-7/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(176, 1, '2013-02-16 22:51:56', '2013-02-16 22:51:56', 'Oh this lovely, lovely Valentines day; I wanted to share Meredith''s wedding. I''m not sure why I saved their wedding for today. I kept thinking; what will I post? I need red, pink, love -lots of love. For some reason I kept thinking about Meredith &amp; Chris and all these beautiful photos. I don''t know about the red but there was some serious love happening and the bridesmaids were sporting some beautiful pink dresses. Close enough? Meredith and her ladies got ready at the beautiful Lansdowne Resort. Champagne, laughing. It was a beautiful, perfect day. Thank you Meredith for inviting us in. I hope you and Chris are having a fabulous Valentines!\r\nXo,\r\nAlison\r\n\r\n<p><a href="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg"><img class="alignnone size-full wp-image-166" alt="6434885_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg" width="1100" height="733" /></a></p>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg"><img class="alignnone size-full wp-image-167" alt="9177258_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg" width="1100" height="733" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg"><img class="alignnone size-full wp-image-168" alt="9283632_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg" width="1100" height="733" /></a><code>', 'Real Wedding: Meredith and Chris', '', 'inherit', 'open', 'open', '', '1-revision-8', '', '', '2013-02-16 22:51:56', '2013-02-16 22:51:56', '', 1, 'http://alisonHarper.dev/1-revision-8/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(177, 1, '2013-02-16 22:53:10', '2013-02-16 22:53:10', 'Oh this lovely, lovely Valentines day; I wanted to share Meredith''s wedding. I''m not sure why I saved their wedding for today. I kept thinking; what will I post? I need red, pink, love -lots of love. For some reason I kept thinking about Meredith &amp; Chris and all these beautiful photos. I don''t know about the red but there was some serious love happening and the bridesmaids were sporting some beautiful pink dresses. Close enough? Meredith and her ladies got ready at the beautiful Lansdowne Resort. Champagne, laughing. It was a beautiful, perfect day. Thank you Meredith for inviting us in. I hope you and Chris are having a fabulous Valentines!\r\nXo,\r\nAlison\r\n\r\n<p><a href="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg"><img class="alignnone size-full wp-image-166" alt="6434885_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg" width="1100" height="733" /></a></p>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg"><img class="alignnone size-full wp-image-167" alt="9177258_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg" width="1100" height="733" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg"><img class="alignnone size-full wp-image-168" alt="9283632_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg" width="1100" height="733" /></a><code></code>', 'Real Wedding: Meredith and Chris', '', 'inherit', 'open', 'open', '', '1-revision-9', '', '', '2013-02-16 22:53:10', '2013-02-16 22:53:10', '', 1, 'http://alisonHarper.dev/1-revision-9/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(178, 1, '2013-02-16 22:53:25', '2013-02-16 22:53:25', 'Oh this lovely, lovely Valentines day; I wanted to share Meredith''s wedding. I''m not sure why I saved their wedding for today. I kept thinking; what will I post? I need red, pink, love -lots of love. For some reason I kept thinking about Meredith &amp; Chris and all these beautiful photos. I don''t know about the red but there was some serious love happening and the bridesmaids were sporting some beautiful pink dresses. Close enough? Meredith and her ladies got ready at the beautiful Lansdowne Resort. Champagne, laughing. It was a beautiful, perfect day. Thank you Meredith for inviting us in. I hope you and Chris are having a fabulous Valentines!\r\nXo,\r\nAlison\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg"><img class="alignnone size-full wp-image-166" alt="6434885_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg" width="1100" height="733" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg"><img class="alignnone size-full wp-image-167" alt="9177258_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg" width="1100" height="733" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg"><img class="alignnone size-full wp-image-168" alt="9283632_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg" width="1100" height="733" /></a><code></code>', 'Real Wedding: Meredith and Chris', '', 'inherit', 'open', 'open', '', '1-revision-10', '', '', '2013-02-16 22:53:25', '2013-02-16 22:53:25', '', 1, 'http://alisonHarper.dev/1-revision-10/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(179, 1, '2013-02-16 23:02:42', '2013-02-16 23:02:42', 'Hannah! Oh sweet Hannah. She and Mark were married this past July. Yes, I am way behind in my blogging. However, it does make you think of beautiful, roll the windows down weather, doesn''t it? Anyhow, Hannah and Mark were married at the Naval Academy in Annapolis with their reception at the waterfront Marriott. It was a beautiful, classic, military wedding. Those are the dearest to my heart. I have to tell you that when I receive the photos of her wedding, there were about 10 of Hannah laughing. She was so sweet, and very, very happy. Oh and Beautiful.\nXo, \nAlison\n\n', 'Hello world!', '', 'inherit', 'open', 'open', '', '5-autosave', '', '', '2013-02-16 23:02:42', '2013-02-16 23:02:42', '', 5, 'http://alisonHarper.dev/5-autosave/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(180, 1, '2013-02-16 23:03:46', '2013-02-16 23:03:46', '', '2661753_orig', '', 'inherit', 'open', 'open', '', '2661753_orig', '', '', '2013-02-16 23:03:46', '2013-02-16 23:03:46', '', 5, 'http://alisonHarper.dev/wp-content/uploads/2013/01/2661753_orig.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES(181, 1, '2013-01-12 20:23:20', '2013-01-12 20:23:20', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '5-revision', '', '', '2013-01-12 20:23:20', '2013-01-12 20:23:20', '', 5, 'http://alisonHarper.dev/5-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(182, 1, '2013-02-16 23:03:54', '2013-02-16 23:03:54', 'Hannah! Oh sweet Hannah. She and Mark were married this past July. Yes, I am way behind in my blogging. However, it does make you think of beautiful, roll the windows down weather, doesn''t it? Anyhow, Hannah and Mark were married at the Naval Academy in Annapolis with their reception at the waterfront Marriott. It was a beautiful, classic, military wedding. Those are the dearest to my heart. I have to tell you that when I receive the photos of her wedding, there were about 10 of Hannah laughing. She was so sweet, and very, very happy. Oh and Beautiful.\r\nXo, \r\nAlison\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/2661753_orig.jpg"><img src="http://alisonHarper.dev/wp-content/uploads/2013/01/2661753_orig.jpg" alt="2661753_orig" width="1100" height="733" class="alignnone size-full wp-image-180" /></a>', 'Hello world!', '', 'inherit', 'open', 'open', '', '5-revision-2', '', '', '2013-02-16 23:03:54', '2013-02-16 23:03:54', '', 5, 'http://alisonHarper.dev/5-revision-2/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(183, 1, '2013-02-16 23:04:47', '2013-02-16 23:04:47', 'Hannah! Oh sweet Hannah. She and Mark were married this past July. Yes, I am way behind in my blogging. However, it does make you think of beautiful, roll the windows down weather, doesn''t it? Anyhow, Hannah and Mark were married at the Naval Academy in Annapolis with their reception at the waterfront Marriott. It was a beautiful, classic, military wedding. Those are the dearest to my heart. I have to tell you that when I receive the photos of her wedding, there were about 10 of Hannah laughing. She was so sweet, and very, very happy. Oh and Beautiful.\r\nXo, \r\nAlison\r\n\r\n', 'Hello world!', '', 'inherit', 'open', 'open', '', '5-revision-3', '', '', '2013-02-16 23:04:47', '2013-02-16 23:04:47', '', 5, 'http://alisonHarper.dev/5-revision-3/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(184, 1, '2013-02-16 23:15:49', '2013-02-16 23:15:49', 'Please let the record show that I am really not a football fan. Like at all. However, with the super bowl coming up on Sunday and the fact that the team from my state -I kind of feel obligated to acknowledge it. Yes, the Ravens are going to the super bowl. If my husband saw this post, he''d throw my computer out of the window. So don''t tell him. \r\n\r\nIn honor of Baltimore heading down south to throw the ball around, I thought I would use this Friday to post some lovely purple details. Enjoy, \r\nAlison', 'Superbowl', '', 'publish', 'open', 'open', '', 'superbowl', '', '', '2013-02-16 23:21:23', '2013-02-16 23:21:23', '', 0, 'http://alisonHarper.dev/?p=184', 0, 'post', '', 0);
INSERT INTO `wp_posts` VALUES(185, 1, '2013-02-16 23:15:42', '2013-02-16 23:15:42', '', '1820987_orig', '', 'inherit', 'open', 'open', '', '1820987_orig', '', '', '2013-02-16 23:15:42', '2013-02-16 23:15:42', '', 184, 'http://alisonHarper.dev/wp-content/uploads/2013/02/1820987_orig.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES(186, 1, '2013-02-16 23:15:35', '2013-02-16 23:15:35', 'Please let the record show that I am really not a football fan. Like at all. However, with the super bowl coming up on Sunday and the fact that the team from my state -I kind of feel obligated to acknowledge it. Yes, the Ravens are going to the super bowl. If my husband saw this post, he''d throw my computer out of the window. So don''t tell him. \n\nIn honor of Baltimore heading down south to throw the ball around, I thought I would use this Friday to post some lovely purple details. Enjoy, \nAlison', 'Superbowl', '', 'inherit', 'open', 'open', '', '184-revision', '', '', '2013-02-16 23:15:35', '2013-02-16 23:15:35', '', 184, 'http://alisonHarper.dev/184-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(187, 1, '2013-02-16 23:15:49', '2013-02-16 23:15:49', 'Please let the record show that I am really not a football fan. Like at all. However, with the super bowl coming up on Sunday and the fact that the team from my state -I kind of feel obligated to acknowledge it. Yes, the Ravens are going to the super bowl. If my husband saw this post, he''d throw my computer out of the window. So don''t tell him. \r\n\r\nIn honor of Baltimore heading down south to throw the ball around, I thought I would use this Friday to post some lovely purple details. Enjoy, \r\nAlison', 'Superbowl', '', 'inherit', 'open', 'open', '', '184-revision-2', '', '', '2013-02-16 23:15:49', '2013-02-16 23:15:49', '', 184, 'http://alisonHarper.dev/184-revision-2/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(188, 1, '2013-02-16 23:05:40', '2013-02-16 23:05:40', 'Hannah! Oh sweet Hannah. She and Mark were married this past July. Yes, I am way behind in my blogging. However, it does make you think of beautiful, roll the windows down weather, doesn''t it? Anyhow, Hannah and Mark were married at the Naval Academy in Annapolis with their reception at the waterfront Marriott. It was a beautiful, classic, military wedding. Those are the dearest to my heart. I have to tell you that when I receive the photos of her wedding, there were about 10 of Hannah laughing. She was so sweet, and very, very happy. Oh and Beautiful.\r\nXo, \r\nAlison\r\n\r\n', 'Real Wedding: Hannah and Mark', '', 'inherit', 'open', 'open', '', '5-revision-4', '', '', '2013-02-16 23:05:40', '2013-02-16 23:05:40', '', 5, 'http://alisonHarper.dev/5-revision-4/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(189, 1, '2013-02-16 23:01:24', '2013-02-16 23:01:24', 'Oh this lovely, lovely Valentines day; I wanted to share Meredith''s wedding. I''m not sure why I saved their wedding for today. I kept thinking; what will I post? I need red, pink, love -lots of love. For some reason I kept thinking about Meredith &amp; Chris and all these beautiful photos. I don''t know about the red but there was some serious love happening and the bridesmaids were sporting some beautiful pink dresses. Close enough? Meredith and her ladies got ready at the beautiful Lansdowne Resort. Champagne, laughing. It was a beautiful, perfect day. Thank you Meredith for inviting us in. I hope you and Chris are having a fabulous Valentines!\r\nXo,\r\nAlison\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg"><img class="alignnone size-full wp-image-166" alt="6434885_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/6434885_orig.jpg" width="1100" height="733" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg"><img class="alignnone size-full wp-image-167" alt="9177258_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9177258_orig.jpg" width="1100" height="733" /></a>\r\n\r\n<a href="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg"><img class="alignnone size-full wp-image-168" alt="9283632_orig" src="http://alisonHarper.dev/wp-content/uploads/2013/01/9283632_orig.jpg" width="1100" height="733" /></a><code></code>', 'Real Wedding: Meredith and Chris', '', 'inherit', 'open', 'open', '', '1-revision-11', '', '', '2013-02-16 23:01:24', '2013-02-16 23:01:24', '', 1, 'http://alisonHarper.dev/1-revision-11/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(190, 1, '2013-01-19 04:21:29', '2013-01-19 04:21:29', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://alisonharper.dev/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2013-01-19 04:21:29', '2013-01-19 04:21:29', '', 2, 'http://alisonHarper.dev/2-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(191, 1, '2013-01-19 00:44:19', '2013-01-19 00:44:19', 'This is my bio that will be seen on many pages', 'Bio', '', 'inherit', 'open', 'open', '', '68-revision', '', '', '2013-01-19 00:44:19', '2013-01-19 00:44:19', '', 68, 'http://alisonHarper.dev/68-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(192, 1, '2013-02-16 22:02:59', '2013-02-16 22:02:59', '\r\n[contentblock id=3]\r\n\r\n', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-22', '', '', '2013-02-16 22:02:59', '2013-02-16 22:02:59', '', 84, 'http://alisonHarper.dev/84-revision-22/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(193, 1, '2013-02-17 00:16:17', '2013-02-17 00:16:17', 'This is my bio that will be seen on many pages', 'Bio', '', 'inherit', 'open', 'open', '', '68-revision-2', '', '', '2013-02-17 00:16:17', '2013-02-17 00:16:17', '', 68, 'http://alisonHarper.dev/68-revision-2/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(194, 1, '2013-02-17 00:16:14', '2013-02-17 00:16:14', '', 'Portfolio', '', 'inherit', 'open', 'open', '', '93-revision', '', '', '2013-02-17 00:16:14', '2013-02-17 00:16:14', '', 93, 'http://alisonHarper.dev/93-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(195, 1, '2013-01-26 01:49:27', '2013-01-26 01:49:27', '', 'Contact Us', '', 'inherit', 'open', 'open', '', '124-revision', '', '', '2013-01-26 01:49:27', '2013-01-26 01:49:27', '', 124, 'http://alisonHarper.dev/124-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(196, 1, '2013-02-17 00:16:56', '2013-02-17 00:16:56', '\r\n[contentblock id=3]\r\n\r\n', 'Baltimore', '', 'inherit', 'open', 'open', '', '84-revision-23', '', '', '2013-02-17 00:16:56', '2013-02-17 00:16:56', '', 84, 'http://alisonHarper.dev/84-revision-23/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(197, 1, '2013-02-17 00:16:45', '2013-02-17 00:16:45', '', 'Portfolio', '', 'inherit', 'open', 'open', '', '93-revision-2', '', '', '2013-02-17 00:16:45', '2013-02-17 00:16:45', '', 93, 'http://alisonHarper.dev/93-revision-2/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(198, 1, '2013-02-17 00:17:25', '2013-02-17 00:17:25', 'Test Content please show up', 'Maryland', '', 'inherit', 'open', 'open', '', '53-revision', '', '', '2013-02-17 00:17:25', '2013-02-17 00:17:25', '', 53, 'http://alisonHarper.dev/53-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(199, 1, '2013-02-17 00:17:25', '2013-02-17 00:17:25', '', 'Common', '', 'inherit', 'open', 'open', '', '67-revision', '', '', '2013-02-17 00:17:25', '2013-02-17 00:17:25', '', 67, 'http://alisonHarper.dev/67-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(201, 1, '2013-02-17 00:16:56', '2013-02-17 00:16:56', '', 'Contact Us', '', 'inherit', 'open', 'open', '', '16-revision', '', '', '2013-02-17 00:16:56', '2013-02-17 00:16:56', '', 16, 'http://alisonHarper.dev/16-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(202, 1, '2013-02-17 00:16:56', '2013-02-17 00:16:56', '', 'Portfolio', '', 'inherit', 'open', 'open', '', '95-revision', '', '', '2013-02-17 00:16:56', '2013-02-17 00:16:56', '', 95, 'http://alisonHarper.dev/95-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(203, 1, '2013-02-17 00:18:50', '2013-02-17 00:18:50', '', 'Services', '', 'inherit', 'open', 'open', '', '55-revision', '', '', '2013-02-17 00:18:50', '2013-02-17 00:18:50', '', 55, 'http://alisonHarper.dev/55-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(204, 1, '2013-02-17 00:16:56', '2013-02-17 00:16:56', '<div id="section1">Test Section 1</div>\n<div id="section2">What happens?</div>', 'About', '', 'inherit', 'open', 'open', '', '15-revision', '', '', '2013-02-17 00:16:56', '2013-02-17 00:16:56', '', 15, 'http://alisonHarper.dev/15-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(205, 1, '2013-02-17 00:21:31', '2013-02-17 00:21:31', '<div id="section1">Test Section 1</div>\n<div id="section2">What happens?</div>', 'About', '', 'inherit', 'open', 'open', '', '15-revision-2', '', '', '2013-02-17 00:21:31', '2013-02-17 00:21:31', '', 15, 'http://alisonHarper.dev/15-revision-2/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(206, 1, '2013-02-17 00:18:34', '2013-02-17 00:18:34', '', 'Contact Us', '', 'inherit', 'open', 'open', '', '16-revision-2', '', '', '2013-02-17 00:18:34', '2013-02-17 00:18:34', '', 16, 'http://alisonHarper.dev/16-revision-2/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(207, 1, '2013-02-17 00:18:38', '2013-02-17 00:18:38', '', 'Portfolio', '', 'inherit', 'open', 'open', '', '95-revision-2', '', '', '2013-02-17 00:18:38', '2013-02-17 00:18:38', '', 95, 'http://alisonHarper.dev/95-revision-2/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(208, 1, '2013-02-17 00:18:47', '2013-02-17 00:18:47', 'This is my bio that will be seen on many pages', 'Bio', '', 'inherit', 'open', 'open', '', '68-revision-3', '', '', '2013-02-17 00:18:47', '2013-02-17 00:18:47', '', 68, 'http://alisonHarper.dev/68-revision-3/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(209, 1, '2013-02-17 00:21:28', '2013-02-17 00:21:28', '', 'Blog', '', 'inherit', 'open', 'open', '', '19-revision', '', '', '2013-02-17 00:21:28', '2013-02-17 00:21:28', '', 19, 'http://alisonHarper.dev/19-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(210, 1, '2013-02-17 00:21:23', '2013-02-17 00:21:23', '', 'Career Opportunities', '', 'inherit', 'open', 'open', '', '81-revision', '', '', '2013-02-17 00:21:23', '2013-02-17 00:21:23', '', 81, 'http://alisonHarper.dev/81-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(211, 1, '2013-02-18 18:59:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-02-18 18:59:04', '0000-00-00 00:00:00', '', 0, 'http://alisonHarper.dev/?p=211', 0, 'post', '', 0);
INSERT INTO `wp_posts` VALUES(212, 1, '2013-02-18 19:13:15', '2013-02-18 19:13:15', '', '_______2092093_orig', 'Photo by I heart Ole Photography', 'inherit', 'open', 'open', '', '_______2092093_orig', '', '', '2013-02-18 19:13:15', '2013-02-18 19:13:15', '', 0, 'http://alisonHarper.dev/wp-content/uploads/2013/02/2092093_orig.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES(213, 1, '2013-02-18 19:13:15', '2013-02-18 19:13:15', 'black and white picture of Alison', '_______2179995_orig', '', 'inherit', 'open', 'open', '', '_______2179995_orig', '', '', '2013-02-18 19:13:15', '2013-02-18 19:13:15', '', 0, 'http://alisonHarper.dev/wp-content/uploads/2013/02/2179995_orig.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES(214, 1, '2013-02-18 19:13:15', '2013-02-18 19:13:15', 'Alison growing up', '_______4302358', '', 'inherit', 'open', 'open', '', '_______4302358', '', '', '2013-02-18 19:13:15', '2013-02-18 19:13:15', '', 0, 'http://alisonHarper.dev/wp-content/uploads/2013/02/4302358.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES(215, 1, '2013-02-18 19:13:15', '2013-02-18 19:13:15', '', '_______7520024_orig', 'Photo by I heart Ole Photography', 'inherit', 'open', 'open', '', '_______7520024_orig', '', '', '2013-02-18 19:13:15', '2013-02-18 19:13:15', '', 0, 'http://alisonHarper.dev/wp-content/uploads/2013/02/7520024_orig.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES(216, 1, '2013-02-17 00:21:28', '2013-02-17 00:21:28', '', 'About', '', 'inherit', 'open', 'open', '', '98-revision', '', '', '2013-02-17 00:21:28', '2013-02-17 00:21:28', '', 98, 'http://alisonHarper.dev/98-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(217, 1, '2013-02-18 19:16:02', '2013-02-18 19:16:02', '[contentblock id=4]', 'About', '', 'inherit', 'open', 'open', '', '98-revision-2', '', '', '2013-02-18 19:16:02', '2013-02-18 19:16:02', '', 98, 'http://alisonHarper.dev/98-revision-2/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(218, 1, '2013-02-18 19:16:49', '2013-02-18 19:16:49', '<p>[contentblock id=4]</p>', 'About', '', 'inherit', 'open', 'open', '', '98-revision-3', '', '', '2013-02-18 19:16:49', '2013-02-18 19:16:49', '', 98, 'http://alisonHarper.dev/98-revision-3/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(219, 1, '2013-02-18 22:24:58', '2013-02-18 22:24:58', '<p>[contentblock id=6]</p>', 'About', '', 'inherit', 'open', 'open', '', '98-autosave', '', '', '2013-02-18 22:24:58', '2013-02-18 22:24:58', '', 98, 'http://alisonHarper.dev/98-autosave/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(220, 1, '2013-02-18 19:22:24', '2013-02-18 19:22:24', '<p>[contentblock id=4]</p>', 'About', '', 'inherit', 'open', 'open', '', '98-revision-4', '', '', '2013-02-18 19:22:24', '2013-02-18 19:22:24', '', 98, 'http://alisonHarper.dev/98-revision-4/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(221, 1, '2013-02-18 19:26:02', '2013-02-18 19:26:02', '[contentblock id=4]\r\n[contentblock id=5]', 'About', '', 'inherit', 'open', 'open', '', '98-revision-5', '', '', '2013-02-18 19:26:02', '2013-02-18 19:26:02', '', 98, 'http://alisonHarper.dev/98-revision-5/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(222, 1, '2013-02-17 00:24:02', '2013-02-17 00:24:02', 'This is my bio that will be seen on many pages', 'Bio', '', 'inherit', 'open', 'open', '', '68-revision-4', '', '', '2013-02-17 00:24:02', '2013-02-17 00:24:02', '', 68, 'http://alisonHarper.dev/68-revision-4/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(223, 1, '2013-02-18 19:35:55', '2013-02-18 19:35:55', '<p>[contentblock id=4]</p>', 'Bio', '', 'inherit', 'open', 'open', '', '68-revision-5', '', '', '2013-02-18 19:35:55', '2013-02-18 19:35:55', '', 68, 'http://alisonHarper.dev/68-revision-5/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(224, 1, '2013-02-18 19:36:07', '2013-02-18 19:36:07', '<p>[contentblock id=4]</p>', 'Meet Alison Harper', '', 'inherit', 'open', 'open', '', '68-revision-6', '', '', '2013-02-18 19:36:07', '2013-02-18 19:36:07', '', 68, 'http://alisonHarper.dev/68-revision-6/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(225, 1, '2013-02-18 19:44:31', '2013-02-18 19:44:31', '<p>[contentblock id=4]</p>', 'Meet Alison Harper', '', 'inherit', 'open', 'open', '', '68-revision-7', '', '', '2013-02-18 19:44:31', '2013-02-18 19:44:31', '', 68, 'http://alisonHarper.dev/68-revision-7/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(226, 1, '2013-02-18 19:45:09', '2013-02-18 19:45:09', '<p>[contentblock id=4]</p>', 'Meet Alison Harper', '', 'inherit', 'open', 'open', '', '68-revision-8', '', '', '2013-02-18 19:45:09', '2013-02-18 19:45:09', '', 68, 'http://alisonHarper.dev/68-revision-8/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(227, 1, '2013-02-18 22:23:16', '2013-02-18 22:23:16', '', '_______7516767_orig', '', 'inherit', 'open', 'open', '', '_______7516767_orig', '', '', '2013-02-18 22:23:16', '2013-02-18 22:23:16', '', 0, 'http://alisonHarper.dev/wp-content/uploads/2013/02/7516767_orig.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES(228, 1, '2013-02-18 19:58:05', '2013-02-18 19:58:05', '<p>[contentblock id=4]</p>', 'Meet Alison Harper', '', 'inherit', 'open', 'open', '', '68-revision-9', '', '', '2013-02-18 19:58:05', '2013-02-18 19:58:05', '', 68, 'http://alisonHarper.dev/68-revision-9/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(229, 1, '2013-02-18 19:33:51', '2013-02-18 19:33:51', '\r\n', 'About', '', 'inherit', 'open', 'open', '', '98-revision-6', '', '', '2013-02-18 19:33:51', '2013-02-18 19:33:51', '', 98, 'http://alisonHarper.dev/98-revision-6/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(230, 1, '2013-02-18 22:27:22', '2013-02-18 22:27:22', '<p>Meet the Team Content Goes Here</p>', 'Meet the Team', '', 'publish', 'open', 'open', '', 'team', '', '', '2013-02-18 22:48:08', '2013-02-18 22:48:08', '', 98, 'http://alisonHarper.dev/?page_id=230', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(231, 1, '2013-02-18 22:26:57', '2013-02-18 22:26:57', '', 'Meet the Team', '', 'inherit', 'open', 'open', '', '230-revision', '', '', '2013-02-18 22:26:57', '2013-02-18 22:26:57', '', 230, 'http://alisonHarper.dev/230-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(232, 1, '2013-02-18 22:27:22', '2013-02-18 22:27:22', '', 'Meet the Team', '', 'inherit', 'open', 'open', '', '230-revision-2', '', '', '2013-02-18 22:27:22', '2013-02-18 22:27:22', '', 230, 'http://alisonHarper.dev/230-revision-2/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(233, 1, '2013-02-18 22:35:48', '2013-02-18 22:35:48', '', 'Caitlin', '', 'trash', 'open', 'open', '', 'caitlin', '', '', '2013-02-18 22:37:05', '2013-02-18 22:37:05', '', 0, 'http://alisonHarper.dev/?page_id=233', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(234, 1, '2013-02-18 22:33:48', '2013-02-18 22:33:48', '', 'Caitlin', '', 'inherit', 'open', 'open', '', '233-revision', '', '', '2013-02-18 22:33:48', '2013-02-18 22:33:48', '', 233, 'http://alisonHarper.dev/233-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(235, 1, '2013-02-18 22:32:32', '2013-02-18 22:32:32', '<p>Meet the Team Content Goes Here</p>', 'Meet the Team', '', 'inherit', 'open', 'open', '', '230-revision-3', '', '', '2013-02-18 22:32:32', '2013-02-18 22:32:32', '', 230, 'http://alisonHarper.dev/230-revision-3/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(236, 1, '2013-02-18 22:35:48', '2013-02-18 22:35:48', '', 'Caitlin', '', 'inherit', 'open', 'open', '', '233-revision-2', '', '', '2013-02-18 22:35:48', '2013-02-18 22:35:48', '', 233, 'http://alisonHarper.dev/233-revision-2/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(237, 1, '2013-02-18 22:49:09', '2013-02-18 22:49:09', '<p>Meet the Team Content Goes Here</p>', 'Meet the Team', '', 'inherit', 'open', 'open', '', '230-autosave', '', '', '2013-02-18 22:49:09', '2013-02-18 22:49:09', '', 230, 'http://alisonHarper.dev/230-autosave/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(238, 1, '2013-02-18 22:36:42', '2013-02-18 22:36:42', '<p>Meet the Team Content Goes Here</p>', 'Meet the Team', '', 'inherit', 'open', 'open', '', '230-revision-4', '', '', '2013-02-18 22:36:42', '2013-02-18 22:36:42', '', 230, 'http://alisonHarper.dev/230-revision-4/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(239, 1, '2013-02-24 18:12:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-02-24 18:12:13', '0000-00-00 00:00:00', '', 0, 'http://alisonHarper.dev/?p=239', 0, 'post', '', 0);
INSERT INTO `wp_posts` VALUES(240, 1, '2013-02-17 00:21:28', '2013-02-17 00:21:28', '', 'Services', '', 'inherit', 'open', 'open', '', '55-revision-2', '', '', '2013-02-17 00:21:28', '2013-02-17 00:21:28', '', 55, 'http://alisonHarper.dev/55-revision-2/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(241, 1, '2013-02-24 20:16:59', '2013-02-24 20:16:59', '<p>[contentblock id=21]</p>\r\n', 'On Location Salon Services', '', 'publish', 'open', 'open', '', 'salon', '', '', '2013-02-24 21:00:33', '2013-02-24 21:00:33', '', 55, 'http://alisonHarper.dev/?page_id=241', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(242, 1, '2013-02-24 20:16:12', '2013-02-24 20:16:12', '', 'Salon Services', '', 'inherit', 'open', 'open', '', '241-revision', '', '', '2013-02-24 20:16:12', '2013-02-24 20:16:12', '', 241, 'http://alisonHarper.dev/241-revision/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(243, 1, '2013-02-24 21:00:05', '2013-02-24 21:00:05', '', 'featured', '', 'inherit', 'open', 'open', '', 'featured', '', '', '2013-02-24 21:00:05', '2013-02-24 21:00:05', '', 241, 'http://alisonHarper.dev/wp-content/uploads/2013/02/featured.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES(244, 1, '2013-02-24 20:16:59', '2013-02-24 20:16:59', '[contentblock id=21]', 'On Location Salon Services', '', 'inherit', 'open', 'open', '', '241-revision-2', '', '', '2013-02-24 20:16:59', '2013-02-24 20:16:59', '', 241, 'http://alisonHarper.dev/241-revision-2/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` VALUES(1, 'Uncategorized', 'uncategorized', 0, 0);
INSERT INTO `wp_terms` VALUES(2, 'Location', 'location', 0, 0);
INSERT INTO `wp_terms` VALUES(3, 'Maryland', 'maryland', 0, 0);
INSERT INTO `wp_terms` VALUES(4, 'North Carolina', 'north-carolina', 0, 0);
INSERT INTO `wp_terms` VALUES(5, 'Outer Banks', 'outer-banks', 0, 0);
INSERT INTO `wp_terms` VALUES(6, 'Virginia', 'virginia', 0, 0);
INSERT INTO `wp_terms` VALUES(7, 'Alexandria', 'alexandria', 0, 0);
INSERT INTO `wp_terms` VALUES(8, 'Annapolis', 'annapolis', 0, 0);
INSERT INTO `wp_terms` VALUES(9, 'Arlington', 'arlington', 0, 0);
INSERT INTO `wp_terms` VALUES(10, 'Baltimore', 'baltimore', 0, 0);
INSERT INTO `wp_terms` VALUES(11, 'Central Maryland', 'central-maryland', 0, 0);
INSERT INTO `wp_terms` VALUES(12, 'Charlottesville', 'charlottesville', 0, 0);
INSERT INTO `wp_terms` VALUES(13, 'District of Columbia', 'district-of-columbia', 0, 0);
INSERT INTO `wp_terms` VALUES(14, 'Hampton Roads', 'hampton-roads', 0, 0);
INSERT INTO `wp_terms` VALUES(15, 'Leesburg', 'leesburg', 0, 0);
INSERT INTO `wp_terms` VALUES(16, 'Richmond', 'richmond', 0, 0);
INSERT INTO `wp_terms` VALUES(17, 'Washington', 'washington', 0, 0);
INSERT INTO `wp_terms` VALUES(18, 'New', 'new', 0, 0);
INSERT INTO `wp_terms` VALUES(19, 'Currently Hiring', 'hiring', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` VALUES(1, 1, 0);
INSERT INTO `wp_term_relationships` VALUES(5, 1, 0);
INSERT INTO `wp_term_relationships` VALUES(55, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(68, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(81, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(84, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(84, 3, 0);
INSERT INTO `wp_term_relationships` VALUES(84, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(84, 19, 0);
INSERT INTO `wp_term_relationships` VALUES(93, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(98, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(100, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(124, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(184, 1, 0);
INSERT INTO `wp_term_relationships` VALUES(230, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(233, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(241, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` VALUES(1, 1, 'category', '', 0, 3);
INSERT INTO `wp_term_taxonomy` VALUES(2, 2, 'category', '', 0, 2);
INSERT INTO `wp_term_taxonomy` VALUES(3, 3, 'category', '', 2, 1);
INSERT INTO `wp_term_taxonomy` VALUES(4, 4, 'category', '', 2, 0);
INSERT INTO `wp_term_taxonomy` VALUES(5, 5, 'category', '', 4, 0);
INSERT INTO `wp_term_taxonomy` VALUES(6, 6, 'category', '', 2, 0);
INSERT INTO `wp_term_taxonomy` VALUES(7, 7, 'category', '', 6, 0);
INSERT INTO `wp_term_taxonomy` VALUES(8, 8, 'category', '', 3, 0);
INSERT INTO `wp_term_taxonomy` VALUES(9, 9, 'category', '', 6, 0);
INSERT INTO `wp_term_taxonomy` VALUES(10, 10, 'category', '', 3, 9);
INSERT INTO `wp_term_taxonomy` VALUES(11, 11, 'category', '', 3, 0);
INSERT INTO `wp_term_taxonomy` VALUES(12, 12, 'category', '', 6, 0);
INSERT INTO `wp_term_taxonomy` VALUES(13, 13, 'category', '', 2, 0);
INSERT INTO `wp_term_taxonomy` VALUES(14, 14, 'category', '', 6, 0);
INSERT INTO `wp_term_taxonomy` VALUES(15, 15, 'category', '', 6, 0);
INSERT INTO `wp_term_taxonomy` VALUES(16, 16, 'category', '', 6, 0);
INSERT INTO `wp_term_taxonomy` VALUES(17, 17, 'category', '', 13, 0);
INSERT INTO `wp_term_taxonomy` VALUES(18, 18, 'category', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES(19, 19, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` VALUES(1, 1, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(2, 1, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(3, 1, 'nickname', 'admin');
INSERT INTO `wp_usermeta` VALUES(4, 1, 'description', '');
INSERT INTO `wp_usermeta` VALUES(5, 1, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(6, 1, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(7, 1, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(8, 1, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(9, 1, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}');
INSERT INTO `wp_usermeta` VALUES(11, 1, 'wp_user_level', '10');
INSERT INTO `wp_usermeta` VALUES(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media');
INSERT INTO `wp_usermeta` VALUES(13, 1, 'show_welcome_panel', '1');
INSERT INTO `wp_usermeta` VALUES(14, 1, 'wp_dashboard_quick_press_last_post_id', '239');
INSERT INTO `wp_usermeta` VALUES(15, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&urlbutton=none&imgsize=medium&align=left');
INSERT INTO `wp_usermeta` VALUES(16, 1, 'wp_user-settings-time', '1361741265');
INSERT INTO `wp_usermeta` VALUES(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}');
INSERT INTO `wp_usermeta` VALUES(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}');
INSERT INTO `wp_usermeta` VALUES(19, 1, 'aim', '');
INSERT INTO `wp_usermeta` VALUES(20, 1, 'yim', '');
INSERT INTO `wp_usermeta` VALUES(21, 1, 'jabber', '');
INSERT INTO `wp_usermeta` VALUES(22, 1, 'phone', '3015493454');
INSERT INTO `wp_usermeta` VALUES(23, 1, 'facebook', '');
INSERT INTO `wp_usermeta` VALUES(24, 1, 'twitter', '');
INSERT INTO `wp_usermeta` VALUES(25, 1, 'pinterest', '');
INSERT INTO `wp_usermeta` VALUES(26, 1, 'youtube', '');
INSERT INTO `wp_usermeta` VALUES(27, 1, 'closedpostboxes_post', 'a:0:{}');
INSERT INTO `wp_usermeta` VALUES(28, 1, 'metaboxhidden_post', 'a:8:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";i:7;s:12:"revisionsdiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` VALUES(1, 'admin', '$P$BAEM3ju6gcP49ANkuiG4TZBrtQCiR5.', 'admin', 'kristen.parks@elevenpeppers.com', '', '2013-01-19 04:21:29', '', 0, 'admin');
