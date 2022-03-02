{
  description = ''Sparkline library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sparkline-master.flake = false;
  inputs.src-sparkline-master.type = "github";
  inputs.src-sparkline-master.owner = "aquilax";
  inputs.src-sparkline-master.repo = "sparkline-nim";
  inputs.src-sparkline-master.ref = "refs/heads/master";
  inputs.src-sparkline-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sparkline-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sparkline-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sparkline-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}