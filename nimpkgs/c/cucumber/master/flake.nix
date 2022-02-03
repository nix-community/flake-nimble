{
  description = ''implements the cucumber BDD framework in the nim language'';
  inputs.src-cucumber-master.flake = false;
  inputs.src-cucumber-master.type = "github";
  inputs.src-cucumber-master.owner = "shaunc";
  inputs.src-cucumber-master.repo = "cucumber_nim";
  inputs.src-cucumber-master.ref = "refs/heads/master";
  
  
  inputs."nre".url = "path:../../../n/nre";
  inputs."nre".type = "github";
  inputs."nre".owner = "riinr";
  inputs."nre".repo = "flake-nimble";
  inputs."nre".ref = "flake-pinning";
  inputs."nre".dir = "nimpkgs/n/nre";

  
  inputs."commandeer".url = "path:../../../c/commandeer";
  inputs."commandeer".type = "github";
  inputs."commandeer".owner = "riinr";
  inputs."commandeer".repo = "flake-nimble";
  inputs."commandeer".ref = "flake-pinning";
  inputs."commandeer".dir = "nimpkgs/c/commandeer";

  
  inputs."tempfile".url = "path:../../../t/tempfile";
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  outputs = { self, nixpkgs, src-cucumber-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cucumber-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cucumber-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}