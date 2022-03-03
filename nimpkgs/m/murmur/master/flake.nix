{
  description = ''MurmurHash in pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-murmur-master.flake = false;
  inputs.src-murmur-master.type = "github";
  inputs.src-murmur-master.owner = "olahol";
  inputs.src-murmur-master.repo = "nimrod-murmur";
  inputs.src-murmur-master.ref = "refs/heads/master";
  inputs.src-murmur-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-murmur-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-murmur-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-murmur-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}