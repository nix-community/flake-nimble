{
  description = ''
    A tool for people who don't like Nim's indentation-based syntax
  '';
  inputs.src-nimdenter.url = "https://github.com/xigoi/nimdenter";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
