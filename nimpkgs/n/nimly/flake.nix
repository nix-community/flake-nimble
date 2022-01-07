{
  description = ''
    Lexer Generator and Parser Generator as a Macro Library in Nim.
  '';
  inputs.src-nimly.url = "https://github.com/loloicci/nimly";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
