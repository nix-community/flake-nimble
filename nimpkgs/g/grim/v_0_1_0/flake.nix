{
  description = ''Graphs in nim!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-grim-v_0_1_0.flake = false;
  inputs.src-grim-v_0_1_0.type = "github";
  inputs.src-grim-v_0_1_0.owner = "ebran";
  inputs.src-grim-v_0_1_0.repo = "grim";
  inputs.src-grim-v_0_1_0.ref = "refs/tags/v.0.1.0";
  
  
  inputs."yaml".type = "github";
  inputs."yaml".owner = "riinr";
  inputs."yaml".repo = "flake-nimble";
  inputs."yaml".ref = "flake-pinning";
  inputs."yaml".dir = "nimpkgs/y/yaml";

  outputs = { self, nixpkgs, flakeNimbleLib, src-grim-v_0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-grim-v_0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-grim-v_0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}