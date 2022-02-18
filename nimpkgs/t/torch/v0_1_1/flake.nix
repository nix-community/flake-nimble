{
  description = ''A nim flavor of pytorch'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-torch-v0_1_1.flake = false;
  inputs.src-torch-v0_1_1.type = "github";
  inputs.src-torch-v0_1_1.owner = "fragcolor-xyz";
  inputs.src-torch-v0_1_1.repo = "nimtorch";
  inputs.src-torch-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."fragments".type = "github";
  inputs."fragments".owner = "riinr";
  inputs."fragments".repo = "flake-nimble";
  inputs."fragments".ref = "flake-pinning";
  inputs."fragments".dir = "nimpkgs/f/fragments";

  outputs = { self, nixpkgs, flakeNimbleLib, src-torch-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torch-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-torch-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}