{
  description = ''A nim flavor of pytorch'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-torch-v0_1_22.flake = false;
  inputs.src-torch-v0_1_22.type = "github";
  inputs.src-torch-v0_1_22.owner = "fragcolor-xyz";
  inputs.src-torch-v0_1_22.repo = "nimtorch";
  inputs.src-torch-v0_1_22.ref = "refs/tags/v0.1.22";
  inputs.src-torch-v0_1_22.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-torch-v0_1_22, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torch-v0_1_22;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-torch-v0_1_22"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}