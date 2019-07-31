class mystuff::docs {
file { '/var/www/html/index.html':
     content => template('mystuff/index.html.erb')
}
}
