{
  description = ''
    A small package to create lindenmayer-systems or l-systems.
  '';
  inputs.src-Echon.url = "https://github.com/eXodiquas/Echon";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
