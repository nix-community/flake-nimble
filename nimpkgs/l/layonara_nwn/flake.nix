{
  description = ''
    Various Layonara related functions for NWN Development
  '';
  inputs.src-layonara_nwn.url = "https://github.com/plenarius/layonara_nwn";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
