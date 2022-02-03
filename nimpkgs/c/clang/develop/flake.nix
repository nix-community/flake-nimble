{
  description = ''Wrapper for libclang C headers'';
  inputs.src-clang-develop.flake = false;
  inputs.src-clang-develop.type = "github";
  inputs.src-clang-develop.owner = "samdmarshall";
  inputs.src-clang-develop.repo = "libclang-nim";
  inputs.src-clang-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-clang-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-clang-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-clang-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}