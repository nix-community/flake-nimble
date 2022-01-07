{
  description = ''
    A new awesome nimble package
  '';
  inputs.src-tim_sort.url = "https://github.com/bung87/tim_sort";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
