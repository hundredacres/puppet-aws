# Installs the AWS Ruby SDK
class aws::sdk {

  # If we're on Amazon we've got the ruby sdk in an rpm. Otherwise we'll get
  # it via gems.
  if $::operatingsystem == 'Amazon' {

    package { 'rubygem-aws-sdk':
        ensure => '1.26.0-1.0.amzn1',
    }

  } else {

    Package { provider => 'gem' }

    package { 'nokogiri':
      ensure => ['1.5.6'],
    } ->
    package { 'json':
      ensure => ['1.4.6'],
    } ->
    package { 'uuidtools':
      ensure => ['2.1.1'],
    } ->
    package { 'aws-sdk':
      ensure => ['1.26.0'],
    }

  }

}
