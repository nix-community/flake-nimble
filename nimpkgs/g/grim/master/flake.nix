{
  description = ''Graphs in nim!'';
  inputs.src-grim-master.flake = false;
  inputs.src-grim-master.type = "github";
  inputs.src-grim-master.owner = "ebran";
  inputs.src-grim-master.repo = "grim";
  inputs.src-grim-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-grim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-grim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-grim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}