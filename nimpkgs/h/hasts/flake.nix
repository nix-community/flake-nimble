{
  description = ''
    AST for various languages
  '';
  inputs.src-hasts.url = "https://github.com/haxscramper/hasts";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
