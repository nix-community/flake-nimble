{
  description = ''Nim - Python bridge'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimpy-master".type = "github";
  inputs."nimpy-master".owner = "riinr";
  inputs."nimpy-master".repo = "flake-nimble";
  inputs."nimpy-master".ref = "flake-pinning";
  inputs."nimpy-master".dir = "nimpkgs/n/nimpy/master";
  inputs."nimpy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}