{
  description = ''Ratio calculator on your terminal'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-miter-master.flake = false;
  inputs.src-miter-master.type = "github";
  inputs.src-miter-master.owner = "rafmst";
  inputs.src-miter-master.repo = "miter";
  inputs.src-miter-master.ref = "refs/heads/master";
  inputs.src-miter-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-miter-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-miter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-miter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}