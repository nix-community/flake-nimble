{
  description = ''Integrator framework for Molecular Dynamic evolutions'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-mdevolve-master.flake = false;
  inputs.src-mdevolve-master.type = "github";
  inputs.src-mdevolve-master.owner = "jxy";
  inputs.src-mdevolve-master.repo = "MDevolve";
  inputs.src-mdevolve-master.ref = "refs/heads/master";
  inputs.src-mdevolve-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mdevolve-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mdevolve-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mdevolve-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}