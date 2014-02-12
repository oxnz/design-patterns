#!/usr/bin/env perl
# auther: oxnz
# coding: utf-8

use strict;
use warnings;

use Receiver;
use Invoker;
use Command::MacroCommand::DemoMacroCommand;
use Command::PasteCommand;
use Command::CopyCommand;

my $receiver = Receiver->new({name => 'phppan'});
my $pasteCmd = Command::PasteCommand->new($receiver);
my $copyCmd = Command::CopyCommand->new($receiver);
my $macroCmd = Command::MacroCommand::DemoMacroCommand->new;
$macroCmd->add($copyCmd);
$macroCmd->add($pasteCmd);
my $invoker = Invoker->new($macroCmd);
$invoker->action;
$macroCmd->remove($copyCmd);
$invoker = Invoker->new($macroCmd);
$invoker->action;
