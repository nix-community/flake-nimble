{
  description = ''
    A SIMD-accelerated vector library written in C99 with Nim bindings.
  '';
  inputs.src-sol.url = "https://github.com/davidgarland/sol";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
