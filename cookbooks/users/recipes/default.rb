#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
search(:users,"*:*").each do |user_data|
	user user_data['id'] do
	uid user_data['uid']
	gid user_data['gid']
	home user_data['home']
	comment user_data['comment']
	shell user_data['shell']
	end
end

include_recipe "users::group"
