{
  description = ''A nim flavor of pytorch'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-torch-v0_1_20.flake = false;
  inputs.src-torch-v0_1_20.type = "github";
  inputs.src-torch-v0_1_20.owner = "fragcolor-xyz";
  inputs.src-torch-v0_1_20.repo = "nimtorch";
  inputs.src-torch-v0_1_20.ref = "refs/tags/v0.1.20";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-torch-v0_1_20, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torch-v0_1_20;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-torch-v0_1_20"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}