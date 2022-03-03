{
  description = ''Low-level wrapper for OpenCL'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."opencl-master".type = "github";
  inputs."opencl-master".owner = "riinr";
  inputs."opencl-master".repo = "flake-nimble";
  inputs."opencl-master".ref = "flake-pinning";
  inputs."opencl-master".dir = "nimpkgs/o/opencl/master";
  inputs."opencl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opencl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}