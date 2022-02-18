{
  description = ''Additional control structures'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-controlstructures-master.flake = false;
  inputs.src-controlstructures-master.type = "github";
  inputs.src-controlstructures-master.owner = "TakeYourFreedom";
  inputs.src-controlstructures-master.repo = "additional-control-structures-for-Nim";
  inputs.src-controlstructures-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-controlstructures-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-controlstructures-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-controlstructures-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}