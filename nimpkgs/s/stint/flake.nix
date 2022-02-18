{
  description = ''Stack-based arbitrary-precision integers - Fast and portable with natural syntax for resource-restricted devices'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."stint-master".type = "github";
  inputs."stint-master".owner = "riinr";
  inputs."stint-master".repo = "flake-nimble";
  inputs."stint-master".ref = "flake-pinning";
  inputs."stint-master".dir = "nimpkgs/s/stint/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}