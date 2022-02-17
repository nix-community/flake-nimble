{
  description = ''Graphs in nim!'';
  inputs.src-grim-v0_3_1.flake = false;
  inputs.src-grim-v0_3_1.type = "github";
  inputs.src-grim-v0_3_1.owner = "ebran";
  inputs.src-grim-v0_3_1.repo = "grim";
  inputs.src-grim-v0_3_1.ref = "refs/tags/v0.3.1";
  
  
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

  outputs = { self, nixpkgs, src-grim-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-grim-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-grim-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}