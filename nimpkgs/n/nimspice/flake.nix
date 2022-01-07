{
  description = ''
    A bunch of macros. sugar if you would
  '';
  inputs.src-nimspice.url = "https://github.com/CodeDoes/nimspice";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
