{
  description = ''
    Simple AST in NIM
  '';
  inputs.src-simpleAST.url = "https://github.com/lguzzon-NIM/simpleAST";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
