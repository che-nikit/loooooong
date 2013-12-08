#!/usr/bin/perl -w
use third;

if ($#ARGV+1 < 4)
	{
	print "INCORRECT INPUT\n";
	exit()}
$name_a = shift(@ARGV1);
$z = shift(@ARGV2);
$name_b = shift(@ARGV3);
$name_res = shift(@ARGV4);
$name_mod = 0;
$fl = 0;

if ($#ARGV+1 > 5){
	if (@ARGV5 == "-b"){
		$fl = 1;
		if ($#ARGV+1 > 6){
			$name_mod = @ARGV6
		}
	}
	else{
		$name_mod = @ARGV5
	}
}
$a =&third::CSECOND($name_a,$fl);
$b =&third::CSECOND($name_b,$fl);

if ($z == "+"){
	$res = $a + $b}
if ($z == "-"){
	$res = $a - $b}
if ($z == "mul"){
	$res = $a * $b}
if ($z == "/"){
	$res = $a / $b}
if ($z == "^"){
	$res = $a ^ $b}
if ($z == "%"){
	$res = $a % $b}

if ($name_mod != 0){
	$mod = &third::CSECOND($name_mod,$fl);
	$res %= $mod}

if ($fl == 1){
	$res=b_output($name_res)}
else{

	$res=output($name_res);
}
