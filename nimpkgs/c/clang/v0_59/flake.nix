{
  description = ''Wrapper for libclang C headers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-clang-v0_59.flake = false;
  inputs.src-clang-v0_59.type = "github";
  inputs.src-clang-v0_59.owner = "samdmarshall";
  inputs.src-clang-v0_59.repo = "libclang-nim";
  inputs.src-clang-v0_59.ref = "refs/tags/v0.59";
  inputs.src-clang-v0_59.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-clang-v0_59, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-clang-v0_59;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-clang-v0_59"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}