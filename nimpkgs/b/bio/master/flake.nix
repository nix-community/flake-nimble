{
  description = ''Bytes utils for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bio-master.flake = false;
  inputs.src-bio-master.type = "github";
  inputs.src-bio-master.owner = "xzeshen";
  inputs.src-bio-master.repo = "bio";
  inputs.src-bio-master.ref = "refs/heads/master";
  inputs.src-bio-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bio-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}