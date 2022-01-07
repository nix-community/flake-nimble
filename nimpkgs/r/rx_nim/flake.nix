{
  description = ''
    An implementation of rx observables in nim
  '';
  inputs.src-rx_nim.url = "https://github.com/nortero-code/rx-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
