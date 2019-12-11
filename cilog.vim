" Vim syntax file
" Language:	cilog files
" Maintainer:	Castis
" Last Change:	2019-12-11

if exists("b:current_syntax")
  finish
endif

syn match cilog_error	'\(.*,Error,.*\|.*,Fail,.*\|.*,Exception,.*\|.*,Critical,.*\)'
syn match cilog_warning	'.*,Warning,.*'
syn match cilog_info	'\(,Success,\|,Information,\|,Report,\|,Debug,\)'
syn match cilog_date	'\d\{4}-\d\d-\d\d'
syn match cilog_time	'\d\d:\d\d:\d\d\.\d\+'


hi def link cilog_error		ErrorMsg
hi def link cilog_warning	WarningMsg
hi def link cilog_info		Type
hi def link cilog_date		Identifier
hi def link cilog_time		Keyword

let b:current_syntax = "cilog"
