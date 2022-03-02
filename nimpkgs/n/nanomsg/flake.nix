{
  description = ''Wrapper for the nanomsg socket library that provides several common communication patterns'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nanomsg-master".type = "github";
  inputs."nanomsg-master".owner = "riinr";
  inputs."nanomsg-master".repo = "flake-nimble";
  inputs."nanomsg-master".ref = "flake-pinning";
  inputs."nanomsg-master".dir = "nimpkgs/n/nanomsg/master";
  inputs."nanomsg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanomsg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}