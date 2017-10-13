with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };

  buildInputs = [
    go

    golint
    gocode
    gnumake
    git
    openssl
  ];

  shellHook =
    ''
      export GORROT=$GOPATH
      export GOBIN=$GOPATH/bin
      export GOPATH=/tmp/gocrap
    '';
}
