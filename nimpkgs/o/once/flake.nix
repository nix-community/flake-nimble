{
  description = ''
    Once provides a type that will enforce that a callback is invoked only once.
  '';
  inputs.src-once.url = "https://git.sr.ht/~euantorano/once.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
