{
  description = ''A postgres DB adapter for nim.'';
  inputs.src-pdba-v0_2_2.flake = false;
  inputs.src-pdba-v0_2_2.type = "github";
  inputs.src-pdba-v0_2_2.owner = "misebox";
  inputs.src-pdba-v0_2_2.repo = "pdba";
  inputs.src-pdba-v0_2_2.ref = "refs/tags/v0.2.2";
  
  
  inputs."yaml".url = "path:../../../y/yaml";
  inputs."yaml".type = "github";
  inputs."yaml".owner = "riinr";
  inputs."yaml".repo = "flake-nimble";
  inputs."yaml".ref = "flake-pinning";
  inputs."yaml".dir = "nimpkgs/y/yaml";

  
  inputs."ndb".url = "path:../../../n/ndb";
  inputs."ndb".type = "github";
  inputs."ndb".owner = "riinr";
  inputs."ndb".repo = "flake-nimble";
  inputs."ndb".ref = "flake-pinning";
  inputs."ndb".dir = "nimpkgs/n/ndb";

  outputs = { self, nixpkgs, src-pdba-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pdba-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pdba-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}