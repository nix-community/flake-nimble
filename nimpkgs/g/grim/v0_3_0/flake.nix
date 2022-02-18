{
  description = ''Graphs in nim!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-grim-v0_3_0.flake = false;
  inputs.src-grim-v0_3_0.type = "github";
  inputs.src-grim-v0_3_0.owner = "ebran";
  inputs.src-grim-v0_3_0.repo = "grim";
  inputs.src-grim-v0_3_0.ref = "refs/tags/v0.3.0";
  
  
  inputs."yaml".type = "github";
  inputs."yaml".owner = "riinr";
  inputs."yaml".repo = "flake-nimble";
  inputs."yaml".ref = "flake-pinning";
  inputs."yaml".dir = "nimpkgs/y/yaml";

  
  inputs."zero_functional".type = "github";
  inputs."zero_functional".owner = "riinr";
  inputs."zero_functional".repo = "flake-nimble";
  inputs."zero_functional".ref = "flake-pinning";
  inputs."zero_functional".dir = "nimpkgs/z/zero_functional";

  outputs = { self, nixpkgs, flakeNimbleLib, src-grim-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-grim-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-grim-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}