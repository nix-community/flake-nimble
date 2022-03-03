{
  description = ''Nim interface for PRIMME: PReconditioned Iterative MultiMethod Eigensolver'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-primme-v0_1_1.flake = false;
  inputs.src-primme-v0_1_1.type = "github";
  inputs.src-primme-v0_1_1.owner = "jxy";
  inputs.src-primme-v0_1_1.repo = "primme";
  inputs.src-primme-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-primme-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-primme-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-primme-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-primme-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}