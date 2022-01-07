{
  description = ''
    A container runtime written in Nim
  '';
  inputs.src-nicoru.url = "https://github.com/fox0430/nicoru";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
