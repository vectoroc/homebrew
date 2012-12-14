require 'formula'

class Drush < Formula
  homepage 'http://drupal.org/project/drush'
  url 'http://ftp.drupal.org/files/projects/drush-7.x-5.8.tar.gz'
  sha1 'd4578feb4be3143d08045c2c55d80e5905315e03'

  head 'git://git.drupal.org/project/drush.git'

  def install
    libexec.install Dir['*']
    bin.install_symlink libexec/'drush'
    (etc+'bash_completion.d').install_symlink libexec/'drush.complete.sh'
  end
end
