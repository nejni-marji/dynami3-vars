#!/bin/bash
lock_vars() {
	$p_dir/lockfiles.sh get $1 && {
		echo "set \$$2 $3"
	} || {
		echo "set \$$2 $4"
	}
}

source $p_dir/plugin.conf
