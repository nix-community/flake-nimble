{
  description = ''
    A nimrod wrapper for libalpm
  '';
  inputs.src-nimalpm.url = "https://github.com/barcharcraz/nimalpm/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
