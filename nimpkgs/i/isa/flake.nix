{
  description = ''Binding for Intel Storage Acceleration library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."isa-master".type = "github";
  inputs."isa-master".owner = "riinr";
  inputs."isa-master".repo = "flake-nimble";
  inputs."isa-master".ref = "flake-pinning";
  inputs."isa-master".dir = "nimpkgs/i/isa/master";
  inputs."isa-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isa-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}