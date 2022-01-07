{
  description = ''
    Nico game engine
  '';
  inputs.src-nico.url = "https://github.com/ftsf/nico";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
