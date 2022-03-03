{
  description = ''Nim implementation of user-agent parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-uap-v1_0_0.flake = false;
  inputs.src-uap-v1_0_0.type = "gitlab";
  inputs.src-uap-v1_0_0.owner = "artemklevtsov";
  inputs.src-uap-v1_0_0.repo = "nim-uap";
  inputs.src-uap-v1_0_0.ref = "refs/tags/v1.0.0";
  inputs.src-uap-v1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."yaml".type = "github";
  # inputs."yaml".owner = "riinr";
  # inputs."yaml".repo = "flake-nimble";
  # inputs."yaml".ref = "flake-pinning";
  # inputs."yaml".dir = "nimpkgs/y/yaml";
  # inputs."yaml".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."yaml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-uap-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uap-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uap-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}