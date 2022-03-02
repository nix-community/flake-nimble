{
  description = ''various vector maths utils for nimrod'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-vecmath-master.flake = false;
  inputs.src-vecmath-master.type = "github";
  inputs.src-vecmath-master.owner = "barcharcraz";
  inputs.src-vecmath-master.repo = "vecmath";
  inputs.src-vecmath-master.ref = "refs/heads/master";
  inputs.src-vecmath-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vecmath-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vecmath-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vecmath-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}