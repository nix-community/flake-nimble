{
  description = ''Nanosecond-percision time using timespec_get'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."timespec_get-master".type = "github";
  inputs."timespec_get-master".owner = "riinr";
  inputs."timespec_get-master".repo = "flake-nimble";
  inputs."timespec_get-master".ref = "flake-pinning";
  inputs."timespec_get-master".dir = "nimpkgs/t/timespec_get/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}