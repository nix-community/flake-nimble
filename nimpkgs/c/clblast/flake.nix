{
  description = ''Wrapper for CLBlast, an OpenCL BLAS library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."clblast-master".type = "github";
  inputs."clblast-master".owner = "riinr";
  inputs."clblast-master".repo = "flake-nimble";
  inputs."clblast-master".ref = "flake-pinning";
  inputs."clblast-master".dir = "nimpkgs/c/clblast/master";
  inputs."clblast-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clblast-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}