{
  description = ''
    Dynamically resizable data structure optimized for fast iteration.
  '';
  inputs.src-faststack.url = "https://github.com/Vladar4/FastStack";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
