{
  description = ''Dimensionful types and dimensional analysis.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-metric-master.flake = false;
  inputs.src-metric-master.type = "github";
  inputs.src-metric-master.owner = "mjendrusch";
  inputs.src-metric-master.repo = "metric";
  inputs.src-metric-master.ref = "refs/heads/master";
  inputs.src-metric-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-metric-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-metric-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-metric-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}