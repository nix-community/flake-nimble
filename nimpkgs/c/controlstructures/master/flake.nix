{
  description = ''Additional control structures'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-controlStructures-master.flake = false;
  inputs.src-controlStructures-master.type = "github";
  inputs.src-controlStructures-master.owner = "TakeYourFreedom";
  inputs.src-controlStructures-master.repo = "Additional-Control-Structures-for-Nim";
  inputs.src-controlStructures-master.ref = "refs/heads/master";
  inputs.src-controlStructures-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-controlStructures-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-controlStructures-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-controlStructures-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}