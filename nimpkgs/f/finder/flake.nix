{
  description = ''
    fs memory zip finder implement in Nim
  '';
  inputs.src-finder.url = "https://github.com/bung87/finder";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
