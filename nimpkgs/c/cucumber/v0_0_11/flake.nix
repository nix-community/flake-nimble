{
  description = ''implements the cucumber BDD framework in the nim language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cucumber-v0_0_11.flake = false;
  inputs.src-cucumber-v0_0_11.type = "github";
  inputs.src-cucumber-v0_0_11.owner = "shaunc";
  inputs.src-cucumber-v0_0_11.repo = "cucumber_nim";
  inputs.src-cucumber-v0_0_11.ref = "refs/tags/v0.0.11";
  inputs.src-cucumber-v0_0_11.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nre".type = "github";
  # inputs."nre".owner = "riinr";
  # inputs."nre".repo = "flake-nimble";
  # inputs."nre".ref = "flake-pinning";
  # inputs."nre".dir = "nimpkgs/n/nre";
  # inputs."nre".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nre".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."commandeer".type = "github";
  # inputs."commandeer".owner = "riinr";
  # inputs."commandeer".repo = "flake-nimble";
  # inputs."commandeer".ref = "flake-pinning";
  # inputs."commandeer".dir = "nimpkgs/c/commandeer";
  # inputs."commandeer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."commandeer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."tempfile".type = "github";
  # inputs."tempfile".owner = "riinr";
  # inputs."tempfile".repo = "flake-nimble";
  # inputs."tempfile".ref = "flake-pinning";
  # inputs."tempfile".dir = "nimpkgs/t/tempfile";
  # inputs."tempfile".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."tempfile".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cucumber-v0_0_11, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cucumber-v0_0_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cucumber-v0_0_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}