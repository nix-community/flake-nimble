{
  description = ''Semantic versioning parser for Nim. Allows the parsing of version strings into objects and the comparing of version objects.'';
  inputs.src-semver-v1_1_0.flake = false;
  inputs.src-semver-v1_1_0.type = "github";
  inputs.src-semver-v1_1_0.owner = "euantorano";
  inputs.src-semver-v1_1_0.repo = "semver.nim";
  inputs.src-semver-v1_1_0.ref = "refs/tags/v1.1.0";
  
  outputs = { self, nixpkgs, src-semver-v1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-semver-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-semver-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}