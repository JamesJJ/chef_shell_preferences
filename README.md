chef_shell_preferences
======================

Sets shell preferences for the chef user, for new users in /etc/skel and globally in /etc/profile.d

* install package vim-enhanced

* template node['shell_preferences']['user_files'].each in to:
   ~/
   /etc/skel/

* template node['shell_preferences']['profile_d_files'].each in to:
  /etc/profile.d/

"It works for me" - If it doesn't work for you: fork it, change it, test it, submit pull request ;)

