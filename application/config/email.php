<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

$config = [
	'useragent' => 'CodeIgniter',
	'protocol'  => 'smtp',
	'mailpath'  => '/usr/sbin/sendmail',
	'smtp_host' => 'ssl://smtp.googlemail.com',
	'smtp_user' => 'dapotsinaga684@gmail.com',  
	'smtp_pass' => '',            
	'smtp_port' => 465,
	'smtp_keepalive' => TRUE,
	'smtp_crypto' => 'SSL',
	'wordwrap'  => TRUE,
	'wrapchars' => 80,
	'mailtype'  => 'html',
	'charset'   => 'utf-8',
	'validate'  => TRUE,
	'crlf'      => "\r\n",
	'newline'   => "\r\n",
];
