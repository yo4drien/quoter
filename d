[33mcommit 96e64287043175d3a545d6ab55b80cad44e98ca5[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m, [m[1;31morigin/HEAD[m[33m)[m
Author: Adrien Burel <info@adrienburel.com>
Date:   Thu Oct 11 20:18:39 2018 -0700

    make it better

[1mdiff --git a/Gemfile b/Gemfile[m
[1mindex d8d3baa..747e6e1 100644[m
[1m--- a/Gemfile[m
[1m+++ b/Gemfile[m
[36m@@ -5,8 +5,8 @@[m [mruby '2.5.1'[m
 [m
 # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'[m
 gem 'rails', '~> 5.2.1'[m
[31m-# Use sqlite3 as the database for Active Record[m
[31m-gem 'sqlite3'[m
[32m+[m[32m# Use pg, not lite[m
[32m+[m[32mgem 'pg'[m
 # Use Puma as the app server[m
 gem 'puma', '~> 3.11'[m
 # Use SCSS for stylesheets[m
[1mdiff --git a/Gemfile.lock b/Gemfile.lock[m
[1mindex 3f6c0db..1fb5e56 100644[m
[1m--- a/Gemfile.lock[m
[1m+++ b/Gemfile.lock[m
[36m@@ -122,6 +122,7 @@[m [mGEM[m
     nio4r (2.3.1)[m
     nokogiri (1.8.5)[m
       mini_portile2 (~> 2.3.0)[m
[32m+[m[32m    pg (1.1.3)[m
     public_suffix (3.0.3)[m
     puma (3.12.0)[m
     rack (2.0.5)[m
[36m@@ -185,7 +186,6 @@[m [mGEM[m
       actionpack (>= 4.0)[m
       activesupport (>= 4.0)[m
       sprockets (>= 3.0.0)[m
[31m-    sqlite3 (1.3.13)[m
     thor (0.20.0)[m
     thread_safe (0.3.6)[m
     tilt (2.0.8)[m
[36m@@ -222,13 +222,13 @@[m [mDEPENDENCIES[m
   jbuilder (~> 2.5)[m
   listen (>= 3.0.5, < 3.2)[m
   mysql2 (>= 0.4.4, < 0.5.0)[m
[32m+[m[32m  pg[m
   puma (~> 3.11)[m
   rails (~> 5.2.1)[m
   sass-rails (~> 5.0)[m
   selenium-webdriver[m
   spring[m
   spring-watcher-listen (~> 2.0.0)[m
[31m-  sqlite3[m
   turbolinks (~> 5)[m
   tzinfo-data[m
   uglifier (>= 1.3.0)[m
