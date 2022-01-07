{
  description = ''
    Transparently declare single-set attributes on types.
  '';
  inputs.src-finals.url = "https://github.com/quelklef/nim-finals";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
