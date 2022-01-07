{
  description = ''
    Pure Nim stack implementation based on sequences.
  '';
  inputs.src-stacks.url = "https://github.com/rustomax/nim-stacks";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
