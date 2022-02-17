{
  description = ''High level wrapper over OpenCL'';
  inputs.src-nimcl-master.flake = false;
  inputs.src-nimcl-master.type = "github";
  inputs.src-nimcl-master.owner = "andreaferretti";
  inputs.src-nimcl-master.repo = "nimcl";
  inputs.src-nimcl-master.ref = "refs/heads/master";
  
  
  inputs."opencl".type = "github";
  inputs."opencl".owner = "riinr";
  inputs."opencl".repo = "flake-nimble";
  inputs."opencl".ref = "flake-pinning";
  inputs."opencl".dir = "nimpkgs/o/opencl";

  outputs = { self, nixpkgs, src-nimcl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}