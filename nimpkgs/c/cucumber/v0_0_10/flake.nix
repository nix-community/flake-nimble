{
  description = ''implements the cucumber BDD framework in the nim language'';
  inputs.src-cucumber-v0_0_10.flake = false;
  inputs.src-cucumber-v0_0_10.type = "github";
  inputs.src-cucumber-v0_0_10.owner = "shaunc";
  inputs.src-cucumber-v0_0_10.repo = "cucumber_nim";
  inputs.src-cucumber-v0_0_10.ref = "refs/tags/v0.0.10";
  
  
  inputs."nre".type = "github";
  inputs."nre".owner = "riinr";
  inputs."nre".repo = "flake-nimble";
  inputs."nre".ref = "flake-pinning";
  inputs."nre".dir = "nimpkgs/n/nre";

  
  inputs."commandeer".type = "github";
  inputs."commandeer".owner = "riinr";
  inputs."commandeer".repo = "flake-nimble";
  inputs."commandeer".ref = "flake-pinning";
  inputs."commandeer".dir = "nimpkgs/c/commandeer";

  outputs = { self, nixpkgs, src-cucumber-v0_0_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cucumber-v0_0_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cucumber-v0_0_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}