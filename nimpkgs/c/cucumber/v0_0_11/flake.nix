{
  description = ''implements the cucumber BDD framework in the nim language'';
  inputs.src-cucumber-v0_0_11.flake = false;
  inputs.src-cucumber-v0_0_11.type = "github";
  inputs.src-cucumber-v0_0_11.owner = "shaunc";
  inputs.src-cucumber-v0_0_11.repo = "cucumber_nim";
  inputs.src-cucumber-v0_0_11.ref = "refs/tags/v0.0.11";
  
  
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

  
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  outputs = { self, nixpkgs, src-cucumber-v0_0_11, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cucumber-v0_0_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cucumber-v0_0_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}