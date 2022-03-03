{
  description = ''ISAAC PRNG implementation on Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-isaac-master.flake = false;
  inputs.src-isaac-master.type = "github";
  inputs.src-isaac-master.owner = "pragmagic";
  inputs.src-isaac-master.repo = "isaac";
  inputs.src-isaac-master.ref = "refs/heads/master";
  inputs.src-isaac-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-isaac-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-isaac-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-isaac-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}