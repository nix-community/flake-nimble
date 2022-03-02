{
  description = ''Deal with Windows Registry from Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-winregistry-master.flake = false;
  inputs.src-winregistry-master.type = "github";
  inputs.src-winregistry-master.owner = "miere43";
  inputs.src-winregistry-master.repo = "nim-registry";
  inputs.src-winregistry-master.ref = "refs/heads/master";
  inputs.src-winregistry-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-winregistry-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winregistry-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-winregistry-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}