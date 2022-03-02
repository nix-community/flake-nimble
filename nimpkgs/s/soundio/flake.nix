{
  description = ''Bindings for libsoundio'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."soundio-master".type = "github";
  inputs."soundio-master".owner = "riinr";
  inputs."soundio-master".repo = "flake-nimble";
  inputs."soundio-master".ref = "flake-pinning";
  inputs."soundio-master".dir = "nimpkgs/s/soundio/master";
  inputs."soundio-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."soundio-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}