{
  description = ''
    Shell command manager
  '';
  inputs.src-oblivion.url = "https://github.com/sealmove/oblivion";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
