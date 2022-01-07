{
  description = ''
    minimal, performant mass file renamer
  '';
  inputs.src-rn.url = "https://github.com/xioren/rn";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
