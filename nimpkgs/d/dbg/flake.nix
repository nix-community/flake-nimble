{
  description = ''dbg template; in debug echo'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."dbg-master".type = "github";
  inputs."dbg-master".owner = "riinr";
  inputs."dbg-master".repo = "flake-nimble";
  inputs."dbg-master".ref = "flake-pinning";
  inputs."dbg-master".dir = "nimpkgs/d/dbg/master";
  inputs."dbg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dbg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}