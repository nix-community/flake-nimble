{
  description = ''
    Lock-free queue implementations for Nim.
  '';
  inputs.src-lockfreequeues.url = "https://github.com/elijahr/lockfreequeues";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
