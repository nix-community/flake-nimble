{
  description = ''Low-level wrapper for OpenCL'';
  inputs.src-opencl-master.flake = false;
  inputs.src-opencl-master.type = "github";
  inputs.src-opencl-master.owner = "nim-lang";
  inputs.src-opencl-master.repo = "opencl";
  inputs.src-opencl-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-opencl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opencl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opencl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}