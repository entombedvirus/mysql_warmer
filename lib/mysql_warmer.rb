DIR = File.expand_path(File.dirname(File.expand_path(__FILE__)))
$:.unshift DIR


require 'eventmachine'
require 'mysql_warmer/em/mysql'
