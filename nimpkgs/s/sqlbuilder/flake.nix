{
  description = ''
    A SQLbuilder with support for NULL values
  '';
  inputs.src-sqlbuilder.url = "https://github.com/ThomasTJdev/nim_sqlbuilder";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
