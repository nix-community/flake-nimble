{
  description = ''
    An alternative DateTime implementation
  '';
  inputs.src-systimes.url = "https://github.com/GULPF/systimes";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
