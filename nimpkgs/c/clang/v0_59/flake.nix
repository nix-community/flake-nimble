{
  description = ''Wrapper for libclang C headers'';
  inputs.src-clang-v0_59.flake = false;
  inputs.src-clang-v0_59.type = "github";
  inputs.src-clang-v0_59.owner = "samdmarshall";
  inputs.src-clang-v0_59.repo = "libclang-nim";
  inputs.src-clang-v0_59.ref = "refs/tags/v0.59";
  
  outputs = { self, nixpkgs, src-clang-v0_59, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-clang-v0_59;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-clang-v0_59"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}