{
  description = ''Module for working with rational numbers (fractions)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimrat-master.flake = false;
  inputs.src-nimrat-master.type = "github";
  inputs.src-nimrat-master.owner = "apense";
  inputs.src-nimrat-master.repo = "nimrat";
  inputs.src-nimrat-master.ref = "refs/heads/master";
  inputs.src-nimrat-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimrat-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrat-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimrat-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}