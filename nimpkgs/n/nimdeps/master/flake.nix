{
  description = ''Nim library to bundle dependency files into executable'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimdeps-master.flake = false;
  inputs.src-nimdeps-master.type = "github";
  inputs.src-nimdeps-master.owner = "genotrance";
  inputs.src-nimdeps-master.repo = "nimdeps";
  inputs.src-nimdeps-master.ref = "refs/heads/master";
  inputs.src-nimdeps-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimdeps-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimdeps-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimdeps-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}