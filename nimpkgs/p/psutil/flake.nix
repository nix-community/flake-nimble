{
  description = ''psutil is a cross-platform library for retrieving information on running processes and system utilization (CPU, memory, disks, network). Since 2018 maintained by Juan Carlos because was abandoned.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."psutil-master".type = "github";
  inputs."psutil-master".owner = "riinr";
  inputs."psutil-master".repo = "flake-nimble";
  inputs."psutil-master".ref = "flake-pinning";
  inputs."psutil-master".dir = "nimpkgs/p/psutil/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}