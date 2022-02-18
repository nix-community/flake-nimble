{
  description = ''A postgres DB adapter for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pdba-v0_2_1.flake = false;
  inputs.src-pdba-v0_2_1.type = "github";
  inputs.src-pdba-v0_2_1.owner = "misebox";
  inputs.src-pdba-v0_2_1.repo = "pdba";
  inputs.src-pdba-v0_2_1.ref = "refs/tags/v0.2.1";
  
  
  inputs."yaml".type = "github";
  inputs."yaml".owner = "riinr";
  inputs."yaml".repo = "flake-nimble";
  inputs."yaml".ref = "flake-pinning";
  inputs."yaml".dir = "nimpkgs/y/yaml";

  
  inputs."ndb".type = "github";
  inputs."ndb".owner = "riinr";
  inputs."ndb".repo = "flake-nimble";
  inputs."ndb".ref = "flake-pinning";
  inputs."ndb".dir = "nimpkgs/n/ndb";

  outputs = { self, nixpkgs, flakeNimbleLib, src-pdba-v0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pdba-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pdba-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}