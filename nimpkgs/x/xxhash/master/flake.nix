{
  description = ''xxhash wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-xxhash-master.flake = false;
  inputs.src-xxhash-master.type = "github";
  inputs.src-xxhash-master.owner = "OpenSystemsLab";
  inputs.src-xxhash-master.repo = "xxhash.nim";
  inputs.src-xxhash-master.ref = "refs/heads/master";
  inputs.src-xxhash-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xxhash-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xxhash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xxhash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}