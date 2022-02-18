{
  description = ''High level wrapper over OpenCL'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimcl-0_1_3.flake = false;
  inputs.src-nimcl-0_1_3.type = "github";
  inputs.src-nimcl-0_1_3.owner = "andreaferretti";
  inputs.src-nimcl-0_1_3.repo = "nimcl";
  inputs.src-nimcl-0_1_3.ref = "refs/tags/0.1.3";
  
  
  inputs."opencl".type = "github";
  inputs."opencl".owner = "riinr";
  inputs."opencl".repo = "flake-nimble";
  inputs."opencl".ref = "flake-pinning";
  inputs."opencl".dir = "nimpkgs/o/opencl";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcl-0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcl-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcl-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}