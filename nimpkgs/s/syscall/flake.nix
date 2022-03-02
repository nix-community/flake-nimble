{
  description = ''Raw system calls for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."syscall-master".type = "github";
  inputs."syscall-master".owner = "riinr";
  inputs."syscall-master".repo = "flake-nimble";
  inputs."syscall-master".ref = "flake-pinning";
  inputs."syscall-master".dir = "nimpkgs/s/syscall/master";
  inputs."syscall-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syscall-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}