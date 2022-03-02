{
  description = ''Sitmo parallel random number generator in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sitmo-master.flake = false;
  inputs.src-sitmo-master.type = "github";
  inputs.src-sitmo-master.owner = "jxy";
  inputs.src-sitmo-master.repo = "sitmo";
  inputs.src-sitmo-master.ref = "refs/heads/master";
  inputs.src-sitmo-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sitmo-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sitmo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sitmo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}