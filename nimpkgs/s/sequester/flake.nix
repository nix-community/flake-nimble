{
  description = ''
    Library for converting sequences to strings. Also has PHP-inspired explode and implode procs.
  '';
  inputs.src-sequester.url = "https://github.com/fallingduck/sequester";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
