{
  description = ''A nim flavor of pytorch'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-torch-v0_2_0.flake = false;
  inputs.src-torch-v0_2_0.type = "github";
  inputs.src-torch-v0_2_0.owner = "fragcolor-xyz";
  inputs.src-torch-v0_2_0.repo = "nimtorch";
  inputs.src-torch-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."fragments".type = "github";
  inputs."fragments".owner = "riinr";
  inputs."fragments".repo = "flake-nimble";
  inputs."fragments".ref = "flake-pinning";
  inputs."fragments".dir = "nimpkgs/f/fragments";

  outputs = { self, nixpkgs, flakeNimbleLib, src-torch-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torch-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-torch-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}