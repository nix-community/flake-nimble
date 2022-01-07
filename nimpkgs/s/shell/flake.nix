{
  description = ''
    A Nim mini DSL to execute shell commands
  '';
  inputs.src-shell.url = "https://github.com/Vindaar/shell";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
