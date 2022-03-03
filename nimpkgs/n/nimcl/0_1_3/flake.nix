{
  description = ''High level wrapper over OpenCL'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimcl-0_1_3.flake = false;
  inputs.src-nimcl-0_1_3.type = "github";
  inputs.src-nimcl-0_1_3.owner = "andreaferretti";
  inputs.src-nimcl-0_1_3.repo = "nimcl";
  inputs.src-nimcl-0_1_3.ref = "refs/tags/0.1.3";
  inputs.src-nimcl-0_1_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."opencl".type = "github";
  # inputs."opencl".owner = "riinr";
  # inputs."opencl".repo = "flake-nimble";
  # inputs."opencl".ref = "flake-pinning";
  # inputs."opencl".dir = "nimpkgs/o/opencl";
  # inputs."opencl".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."opencl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcl-0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcl-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcl-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}