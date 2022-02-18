{
  description = ''Wrapper for libclang C headers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-clang-v0_59.flake = false;
  inputs.src-clang-v0_59.type = "github";
  inputs.src-clang-v0_59.owner = "samdmarshall";
  inputs.src-clang-v0_59.repo = "libclang-nim";
  inputs.src-clang-v0_59.ref = "refs/tags/v0.59";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-clang-v0_59, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-clang-v0_59;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-clang-v0_59"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}