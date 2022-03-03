{
  description = ''Semantic versioning parser for Nim. Allows the parsing of version strings into objects and the comparing of version objects.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-semver-v1_1_1.flake = false;
  inputs.src-semver-v1_1_1.type = "github";
  inputs.src-semver-v1_1_1.owner = "euantorano";
  inputs.src-semver-v1_1_1.repo = "semver.nim";
  inputs.src-semver-v1_1_1.ref = "refs/tags/v1.1.1";
  inputs.src-semver-v1_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-semver-v1_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-semver-v1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-semver-v1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}