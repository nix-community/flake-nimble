{
  description = ''
    A compact dictionary implementation
  '';
  inputs.src-compactdict.url = "https://github.com/LemonBoy/compactdict";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
