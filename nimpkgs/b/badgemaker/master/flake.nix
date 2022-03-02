{
  description = ''The Nim badgemaker tool.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-badgemaker-master.flake = false;
  inputs.src-badgemaker-master.type = "github";
  inputs.src-badgemaker-master.owner = "ethosa";
  inputs.src-badgemaker-master.repo = "badgemaker";
  inputs.src-badgemaker-master.ref = "refs/heads/master";
  inputs.src-badgemaker-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-badgemaker-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-badgemaker-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-badgemaker-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}