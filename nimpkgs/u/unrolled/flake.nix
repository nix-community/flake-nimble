{
  description = ''
    Unroll for-loops at compile-time.
  '';
  inputs.src-unrolled.url = "https://github.com/schneiderfelipe/unrolled";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
