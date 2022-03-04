{
  description = ''Wrapper for CLBlast, an OpenCL BLAS library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-clblast-master.flake = false;
  inputs.src-clblast-master.type = "github";
  inputs.src-clblast-master.owner = "numforge";
  inputs.src-clblast-master.repo = "nim-clblast";
  inputs.src-clblast-master.ref = "refs/heads/master";
  inputs.src-clblast-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."opencl".type = "github";
  inputs."opencl".owner = "riinr";
  inputs."opencl".repo = "flake-nimble";
  inputs."opencl".ref = "flake-pinning";
  inputs."opencl".dir = "nimpkgs/o/opencl";
  inputs."opencl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opencl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-clblast-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-clblast-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-clblast-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}