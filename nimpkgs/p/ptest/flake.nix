{
  description = ''
    Print-testing for nim.
  '';
  inputs.src-ptest.url = "https://github.com/treeform/ptest";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
