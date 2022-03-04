{
  description = ''Graphs in nim!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-grim-master.flake = false;
  inputs.src-grim-master.type = "github";
  inputs.src-grim-master.owner = "ebran";
  inputs.src-grim-master.repo = "grim";
  inputs.src-grim-master.ref = "refs/heads/master";
  inputs.src-grim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."yaml".type = "github";
  inputs."yaml".owner = "riinr";
  inputs."yaml".repo = "flake-nimble";
  inputs."yaml".ref = "flake-pinning";
  inputs."yaml".dir = "nimpkgs/y/yaml";
  inputs."yaml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."zero_functional".type = "github";
  inputs."zero_functional".owner = "riinr";
  inputs."zero_functional".repo = "flake-nimble";
  inputs."zero_functional".ref = "flake-pinning";
  inputs."zero_functional".dir = "nimpkgs/z/zero_functional";
  inputs."zero_functional".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-grim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-grim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-grim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}