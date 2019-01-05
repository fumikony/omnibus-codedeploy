package 'epel-release'

%w[git tig bash-completion byobu emacs-nox tree].each do |_|
  package _
end

execute %q(yum -y groupinstall "Development tools")


%w[gcc zlib-devel openssl-devel readline-devel libffi-devel].each do |_|
  package _
end



%w[
  curl-devel
  expat-devel
  gettext-devel
  openssl-devel
  perl-devel
  zlib-devel
  perl-ExtUtils-MakeMaker
].each do |_|
  package _
end
