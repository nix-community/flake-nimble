{
  description = ''Low-level wrapper for OpenCL'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-opencl-master.flake = false;
  inputs.src-opencl-master.type = "github";
  inputs.src-opencl-master.owner = "nim-lang";
  inputs.src-opencl-master.repo = "opencl";
  inputs.src-opencl-master.ref = "refs/heads/master";
  inputs.src-opencl-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-opencl-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opencl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-opencl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}