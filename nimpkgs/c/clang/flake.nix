{
  description = ''
    Wrapper for libclang C headers
  '';
  inputs.src-clang.url = "https://github.com/samdmarshall/libclang-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
