{
  description = ''
    Nim wrappers for tree-sitter parser grammars
  '';
  inputs.src-htsparse.url = "https://github.com/haxscramper/htsparse";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
