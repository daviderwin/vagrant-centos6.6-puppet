include nginx

stage { "prepare":
  before => Stage["main"],
}

class setup {
  exec { "update-aptitude":
    command => "/usr/bin/yum update -y",
  }
}

class {
  "setup":
    stage => prepare;
  "golang":;
}
