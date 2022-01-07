{
  description = ''
    EDN and Clojure parser
  '';
  inputs.src-edn.url = "https://github.com/rosado/edn.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
