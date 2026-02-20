-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2026 at 04:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'JAVA'),
(2, 'PHP'),
(3, 'HTML'),
(4, 'CSS'),
(5, 'Education'),
(6, 'Sports'),
(7, 'Python'),
(8, 'Health');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Working with Sohan\'s Project.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p data-start=\"161\" data-end=\"592\">Welcome to Sohan\'s Project, a dedicated platform for learning and exploring modern web and software development technologies. Our mission is to provide hands-on guidance in <strong data-start=\"334\" data-end=\"384\">HTML, CSS, JavaScript, jQuery,&nbsp;<strong data-start=\"334\" data-end=\"384\">PHP,</strong> Python and Java</strong>&nbsp;helping beginners and aspiring developers build practical skills through real-world projects. At Sohan\'s Project, we believe that learning by doing is the key to mastering programming and web development.</p>\r\n<p data-start=\"594\" data-end=\"989\">We focus on creating clear, easy-to-follow tutorials, examples, and projects that allow learners to understand not only the theory but also how to implement it effectively. From designing responsive webpages with HTML and CSS, adding interactivity with JavaScript and jQuery, to developing backend logic with Python and PHP, we cover a complete spectrum of web and software development skills.</p>\r\n<p data-start=\"991\" data-end=\"1311\">Our goal is to empower learners to build their own websites, applications, and projects confidently while fostering creativity, problem-solving, and innovation. Whether you are starting from scratch or enhancing your existing skills, Sohan\'s Project is your companion in the journey to becoming a proficient developer.</p>'),
(2, 'Privacy', '<p data-start=\"145\" data-end=\"520\">At Sohan\'s Project, your privacy and personal information are very important to us. We are committed to protecting the data you share with us and ensuring it is used responsibly. Any information collected through our website, such as names, email addresses, or feedback, is used solely to improve your learning experience, provide updates, and communicate relevant content.</p>\r\n<p data-start=\"145\" data-end=\"520\">&nbsp;</p>\r\n<p data-start=\"522\" data-end=\"820\">We do not sell, share, or disclose your personal information to third parties without your consent. Our website may use cookies or similar technologies to enhance user experience, analyze website traffic, and improve our services, but this data is anonymized and cannot identify individual users.</p>\r\n<p data-start=\"822\" data-end=\"1155\">By using Sohan\'s Project, you agree to our privacy practices and consent to the collection and use of information as described above. We continuously review and update our privacy measures to ensure that your information remains secure, giving you peace of mind while learning and exploring programming and web development with us.</p>'),
(3, 'DMCA', '<p data-start=\"108\" data-end=\"489\">Sohan\'s Project respects the intellectual property rights of others and expects its users to do the same. If you believe that your copyrighted work has been used on our website without your permission, you may submit a <strong data-start=\"327\" data-end=\"351\">DMCA takedown notice</strong>. Upon receiving a valid notice, we will review the claim promptly and remove or disable access to the infringing material if necessary.</p>\r\n<p data-start=\"491\" data-end=\"533\">To submit a DMCA notice, please provide:</p>\r\n<ol data-start=\"534\" data-end=\"1000\">\r\n<li data-start=\"534\" data-end=\"620\">\r\n<p data-start=\"537\" data-end=\"620\">A physical or electronic signature of the copyright owner or an authorized agent.</p>\r\n</li>\r\n<li data-start=\"621\" data-end=\"698\">\r\n<p data-start=\"624\" data-end=\"698\">A description of the copyrighted work that you claim has been infringed.</p>\r\n</li>\r\n<li data-start=\"699\" data-end=\"766\">\r\n<p data-start=\"702\" data-end=\"766\">The URL or location of the infringing material on our website.</p>\r\n</li>\r\n<li data-start=\"767\" data-end=\"828\">\r\n<p data-start=\"770\" data-end=\"828\">Your contact information (address, phone number, email).</p>\r\n</li>\r\n<li data-start=\"829\" data-end=\"909\">\r\n<p data-start=\"832\" data-end=\"909\">A statement that you have a good faith belief that the use is unauthorized.</p>\r\n</li>\r\n<li data-start=\"910\" data-end=\"1000\">\r\n<p data-start=\"913\" data-end=\"1000\">A statement under penalty of perjury that the information in your notice is accurate.</p>\r\n</li>\r\n</ol>\r\n<p data-start=\"1002\" data-end=\"1153\">We take copyright infringement seriously and will act in accordance with the <strong data-start=\"1079\" data-end=\"1122\">Digital Millennium Copyright Act (DMCA)</strong> to protect creators&rsquo; rights.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `tittle`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(7, 7, 'Basics of Python', '<p>Python is a high-level, general-purpose programming language designed to be easy to read, write, and maintain, which makes it especially popular for beginners and professionals alike. At a foundational level, learning Python starts with understanding how programs are structured and how code is executed line by line. You’ll work with variables to store information, explore core data types such as integers, floating-point numbers, strings, booleans, lists, tuples, sets, and dictionaries, and learn how to manipulate this data using built-in operators and methods. Control flow is another key concept: using conditional statements (`if`, `elif`, `else`) allows your program to make decisions, while loops (`for` and `while`) let you repeat actions efficiently without rewriting code.</p>\r\n\r\n<p>As you go deeper into the basics, you’ll learn how to write and call functions to organize your code into reusable, logical blocks, making your programs easier to read and debug. You’ll also be introduced to modules and libraries, which let you import existing functionality instead of reinventing the wheel. Basic error handling with `try` and `except` teaches you how to anticipate and manage runtime problems gracefully. On top of that, understanding input and output helps your programs interact with users and external files, which is essential for real-world applications. Together, these core concepts form the backbone of Python programming and prepare you to move into more advanced topics like object-oriented programming, data analysis, web development, and automation.</p>\r\n', 'upload/image-400x241.jpg', 'Tanvir Rana', 'Java, JAVA Coding, JAVA Practice', '2026-02-13 18:21:24', 1),
(9, 3, 'Fundamental of html', '<p>HTML, which stands for HyperText Markup Language, is the core language used to create and structure content on the web. It defines how text, images, videos, links, and other elements are displayed in a browser. Without HTML, websites would have no structure, as it provides the framework for all web pages. Learning HTML is the first step for anyone interested in web development, as it is the foundation upon which CSS and JavaScript build styling and interactivity.</p>\r\n<p>Every HTML document follows a standard structure. It begins with the \'!DOCTYPE html\' declaration to define the document type, followed by the \'html\' root element. Inside it, the \'head\' section contains metadata such as the page title, character encoding, and links to CSS or scripts, while the \'body\' section contains all the visible content like headings, paragraphs, images, and links. This structured layout ensures that browsers interpret and display the content correctly.</p>', 'upload/image-306x165.jpg', 'Niloy', 'php', '2026-02-13 18:27:23', 4),
(10, 4, 'Learn CSS Easily', '<p>Learning CSS easily starts with understanding what CSS actually does: it controls how your HTML content looks and feels on the screen. While HTML gives your webpage structure (headings, paragraphs, images, buttons), CSS is what makes it visually appealing—setting colors, fonts, spacing, layouts, and responsive behavior for different screen sizes. In the beginning, you’ll learn how to write simple CSS rules using selectors (to choose which HTML elements to style), properties (what you want to change, like `color` or `font-size`), and values (the specific setting you apply). You’ll also learn the different ways to add CSS to your webpage, with external stylesheets being the best practice because they keep your design separate from your content and make your code easier to manage.</p>\r\n\r\n<p>As you move forward, you’ll understand how elements are sized and spaced using the box model, which includes content, padding, borders, and margins—this concept alone helps clear up a lot of beginner confusion about why things don’t line up the way you expect. You’ll also get comfortable with layout systems like Flexbox and basic Grid concepts, which make aligning items and creating page layouts much simpler than older methods. On top of that, learning how CSS “cascades,” how inheritance works, and how specificity decides which styles win will save you tons of frustration when styles don’t apply the way you thought they would. With a bit of practice and experimentation, CSS becomes less about memorizing rules and more about confidently shaping how your webpages look across different devices and screen sizes.</p>\r\n', 'upload/image-300x168.jpg', 'Sumon', 'css', '2026-02-13 18:28:28', 2),
(12, 8, 'Health Title Goes Here', '<p>Health refers to a person’s overall well-being, which includes physical, mental, and emotional aspects of life. It is not only about avoiding illness, but also about taking care of the body and mind through healthy daily habits. Eating nutritious food helps the body grow, repair itself, and stay energized, while regular physical activity keeps muscles strong, improves heart health, and boosts immunity. Getting enough sleep is also essential because it allows the body and brain to rest, recover, and function properly the next day. When these basic habits are maintained, the body becomes more resistant to sickness and able to perform daily tasks with more energy and focus.</p>\r\n\r\n<p>Mental and emotional health are equally important parts of overall health. Managing stress, expressing emotions in healthy ways, and maintaining positive relationships all contribute to a balanced and stable mindset. When people take time to relax, practice self-care, and stay connected with others, they are better able to handle challenges and pressure in daily life. A healthy mind improves concentration, decision-making, and emotional control, which directly affects how a person performs at school, work, and in relationships. Together, caring for both the body and the mind creates a strong foundation for long-term well-being and a better quality of life.</p>\r\n', 'upload/568e82c4ee.jpg', 'Admin', 'health', '2026-02-13 18:33:34', 0),
(13, 6, 'Sports Title Goes Here', '<p>Sports are physical activities that involve skill, competition, and often teamwork, designed to improve fitness, coordination, and overall health. Participating in sports helps strengthen muscles and bones, improves cardiovascular health, and enhances flexibility and endurance. Beyond the physical benefits, sports also teach important life skills such as discipline, focus, goal-setting, and time management. Whether it’s individual sports like swimming and running or team sports like football and basketball, regular participation encourages an active lifestyle and helps prevent health problems caused by inactivity, such as obesity, heart disease, and diabetes.</p>\r\n\r\n<p>In addition to physical benefits, sports play a significant role in developing mental and social well-being. Engaging in sports can reduce stress, increase self-confidence, and improve concentration and decision-making skills. Team sports, in particular, foster teamwork, communication, leadership, and sportsmanship, while also creating opportunities for making friends and building strong social connections. Overall, sports not only contribute to a healthier body and mind but also help individuals develop character, resilience, and a sense of achievement, making them an essential part of a balanced and active lifestyle.</p>\r\n', 'upload/848a250931.jpg', 'admin', 'live, footbal, sports', '2026-02-13 18:35:30', 2),
(14, 5, 'Education is the Backbone of a Nation', '<p>Education is often called the backbone of a nation because it forms the foundation for personal growth, social development, and national progress. Through education, individuals gain knowledge, skills, and critical thinking abilities that help them understand the world, make informed decisions, and contribute meaningfully to society. It empowers people to break the cycle of poverty, improve their quality of life, and create opportunities for themselves and their communities. A well-educated population is better equipped to face challenges, adopt innovations, and participate in civic and economic activities, which are all essential for a country’s growth and stability.</p>\r\n\r\n<p>Beyond individual benefits, education strengthens the social and economic fabric of a nation. It promotes equality by giving everyone a chance to learn and succeed, reduces social disparities, and encourages responsible citizenship. Educated citizens are more likely to contribute positively to the economy, follow laws, and support democratic values, creating a more harmonious and progressive society. Moreover, education fosters innovation, research, and technological advancement, which are crucial for a nation to compete globally. In essence, by nurturing knowledge, values, and skills, education acts as the backbone that supports a nation’s prosperity, unity, and long-term development.</p>\r\n', 'upload/47f4b1c117.jpg', 'Rohan', 'education', '2026-02-13 18:37:20', 0),
(15, 3, 'HTML Post Goes Here', '<p>HTML, or HyperText Markup Language, is the fundamental language used to create and structure content on the web. Every webpage you visit is built using HTML, which organizes content into elements such as headings, paragraphs, images, links, lists, and tables. Learning HTML begins with understanding its basic structure: the declaration, the root element, the section for metadata like page titles and linked stylesheets, and the section where visible content is placed. HTML uses tags and attributes to define the purpose and behavior of each element, allowing web browsers to display content correctly and making it easier for developers to style or enhance pages with CSS and JavaScript.</p>\r\n<p>Beyond basic structure, HTML emphasizes semantic coding, which means using tags that clearly describe the meaning of the content. Elements like help organize a webpage in a logical way that is accessible to both users and search engines. Attributes, such as `href` for links or `src` for images, provide extra information that enhances functionality and accessibility. By mastering HTML fundamentals, beginners gain the ability to create well-structured webpages, laying the groundwork for more advanced web development skills, including styling with CSS and adding interactivity with JavaScript.</p>', 'upload/7fce8f40e8.jpg', 'Editor', 'html', '2026-02-13 18:56:07', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(1, 'First Slider Title', 'upload/slider/image-960x280.jpg'),
(2, 'Second Slider Title', 'upload/slider/4602dd63c6.jpg'),
(3, 'Third Slider Title', 'upload/slider/7700ded86c.jpg'),
(5, 'Forth Silder Title', 'upload/slider/e02e015b29.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com/', 'http://twitter.com', 'http://linkedin.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'gradient');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(4, '', 'admin', '202cb962ac59075b964b07152d234b70', '', '', 0),
(5, '', 'niloy', '512ab88034aabcb960a9d8e8c213d753', 'niloy@gmail.com', '', 1),
(6, '', 'azad', '202cb962ac59075b964b07152d234b70', 'azad@gmail.com', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Working with Sohan&#039;s Project', 'HTML, CSS, JavaScript, jQuery, PHP, Python, Java', 'upload/Sohan2.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
