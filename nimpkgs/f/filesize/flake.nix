{
  description = ''
    A Nim package to convert filesizes into other units, and turns filesizes into human readable strings.
  '';
  inputs.src-filesize.url = "https://github.com/sergiotapia/filesize";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
