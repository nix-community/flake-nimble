{
  description = ''Large number of cryptographic hashes for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sph-master.flake = false;
  inputs.src-sph-master.type = "github";
  inputs.src-sph-master.owner = "aidansteele";
  inputs.src-sph-master.repo = "sph";
  inputs.src-sph-master.ref = "refs/heads/master";
  inputs.src-sph-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sph-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sph-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sph-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}