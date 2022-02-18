{
  description = ''implements the cucumber BDD framework in the nim language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cucumber-v0_0_3.flake = false;
  inputs.src-cucumber-v0_0_3.type = "github";
  inputs.src-cucumber-v0_0_3.owner = "shaunc";
  inputs.src-cucumber-v0_0_3.repo = "cucumber_nim";
  inputs.src-cucumber-v0_0_3.ref = "refs/tags/v0.0.3";
  
  
  inputs."nre".type = "github";
  inputs."nre".owner = "riinr";
  inputs."nre".repo = "flake-nimble";
  inputs."nre".ref = "flake-pinning";
  inputs."nre".dir = "nimpkgs/n/nre";

  
  inputs."comandeer".type = "github";
  inputs."comandeer".owner = "riinr";
  inputs."comandeer".repo = "flake-nimble";
  inputs."comandeer".ref = "flake-pinning";
  inputs."comandeer".dir = "nimpkgs/c/comandeer";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cucumber-v0_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cucumber-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cucumber-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}