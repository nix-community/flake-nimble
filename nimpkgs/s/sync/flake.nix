{
  description = ''
    Useful synchronization primitives
  '';
  inputs.src-sync.url = "https://github.com/planetis-m/sync";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
