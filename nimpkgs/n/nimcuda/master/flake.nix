{
  description = ''CUDA bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimcuda-master.flake = false;
  inputs.src-nimcuda-master.type = "github";
  inputs.src-nimcuda-master.owner = "andreaferretti";
  inputs.src-nimcuda-master.repo = "nimcuda";
  inputs.src-nimcuda-master.ref = "refs/heads/master";
  inputs.src-nimcuda-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcuda-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcuda-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcuda-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}