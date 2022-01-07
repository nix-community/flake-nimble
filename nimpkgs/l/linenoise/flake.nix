{
  description = ''
    Wrapper for linenoise, a free, self-contained alternative to GNU readline.
  '';
  inputs.src-linenoise.url = "https://github.com/fallingduck/linenoise-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
