{
  description = ''Wrapper for libclang C headers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-clang-develop.flake = false;
  inputs.src-clang-develop.type = "github";
  inputs.src-clang-develop.owner = "samdmarshall";
  inputs.src-clang-develop.repo = "libclang-nim";
  inputs.src-clang-develop.ref = "refs/heads/develop";
  inputs.src-clang-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-clang-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-clang-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-clang-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}