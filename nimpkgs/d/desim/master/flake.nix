{
  description = ''A lightweight discrete event simulator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-desim-master.flake = false;
  inputs.src-desim-master.type = "other";
  inputs.src-desim-master.owner = "";
  inputs.src-desim-master.repo = "raw.githubusercontent.com";
  inputs.src-desim-master.ref = "refs/heads/master";
  inputs.src-desim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-desim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-desim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-desim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}