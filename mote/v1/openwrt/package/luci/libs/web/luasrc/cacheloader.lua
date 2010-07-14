--[[
LuCI - Lua Configuration Interface

Copyright 2008 Steven Barth <steven@midlink.org>
Copyright 2008 Jo-Philipp Wich <xm@leipzig.freifunk.net>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

$Id: cacheloader.lua 3941 2008-12-23 21:39:38Z jow $
]]--

local config = require "luci.config"
local ccache = require "luci.ccache"

module "luci.cacheloader"

if config.ccache and config.ccache.enable == "1" then
	ccache.cache_ondemand()
end