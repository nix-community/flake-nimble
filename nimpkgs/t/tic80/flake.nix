{
  description = ''
    TIC-80 bindings
  '';
  inputs.src-tic80.url = "https://github.com/thisago/tic80";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
