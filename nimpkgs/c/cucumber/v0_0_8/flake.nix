{
  description = ''implements the cucumber BDD framework in the nim language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cucumber-v0_0_8.flake = false;
  inputs.src-cucumber-v0_0_8.type = "github";
  inputs.src-cucumber-v0_0_8.owner = "shaunc";
  inputs.src-cucumber-v0_0_8.repo = "cucumber_nim";
  inputs.src-cucumber-v0_0_8.ref = "refs/tags/v0.0.8";
  inputs.src-cucumber-v0_0_8.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-cucumber-v0_0_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cucumber-v0_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cucumber-v0_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}