{
  description = ''Semantic versioning parser for Nim. Allows the parsing of version strings into objects and the comparing of version objects.'';
  inputs.src-semver-master.flake = false;
  inputs.src-semver-master.type = "github";
  inputs.src-semver-master.owner = "euantorano";
  inputs.src-semver-master.repo = "semver.nim";
  inputs.src-semver-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-semver-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-semver-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-semver-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}