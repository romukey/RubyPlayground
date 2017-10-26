require 'rubygems'
require 'pry'
require 'ruby-enum'

class Mentors
  include Ruby::Enum

  define 'JIO',     { mention: '@jiosotoyama',    calendar_name: 'じお' }
  define 'YUTA',    { mention: '@yuta-takahashi', calendar_name: 'ゆうた' }
  define 'YUKKI',   { mention: '@ueda-yukihiro',  calendar_name: 'ゆっきー' }
  define 'UMEKI',   { mention: '@ryo-umeki',      calendar_name: 'うめきち' }
  define 'SATSUKI', { mention: '@satsuki-kajiya', calendar_name: 'さつき' }
  define 'MAKIY',   { mention: '@makiko-shimizu', calendar_name: 'まっきー' }
  define 'SAWA',    { mention: '@sawa-uchida',    calendar_name: 'さわっち' }
  define 'AWA',     { mention: '@keisuke.awa',    calendar_name: 'あわちゃん' }
  define 'ANJU',    { mention: '@anju',           calendar_name: 'あんじゅ' }
  define 'MAI',     { mention: '@takana-mai',     calendar_name: 'まい' }

end
