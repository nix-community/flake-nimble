{
  description = ''
    FastCGI library for Nim
  '';
  inputs.src-fastcgi.url = "https://github.com/ba0f3/fastcgi.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
