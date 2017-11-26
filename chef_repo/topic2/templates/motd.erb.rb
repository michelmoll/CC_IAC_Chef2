#
# Cookbook:: topic2
# Template for message of the day
#
# Copyright:: 2017, The Authors, All Rights Reserved.

<%= @group %>
<% @members.each do |item| %>
	- <%= item %>
<% end %>
<%= @lecturer %>
# missing newdate command
<%= @message%>
