{
  description = ''
    c2nim is a tool to translate Ansi C code to Nim.
  '';
  inputs.src-c2nim.url = "https://github.com/nim-lang/c2nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
