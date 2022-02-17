{
  description = ''A postgres DB adapter for nim.'';
  inputs.src-pdba-v0_2_3.flake = false;
  inputs.src-pdba-v0_2_3.type = "github";
  inputs.src-pdba-v0_2_3.owner = "misebox";
  inputs.src-pdba-v0_2_3.repo = "pdba";
  inputs.src-pdba-v0_2_3.ref = "refs/tags/v0.2.3";
  
  
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

  outputs = { self, nixpkgs, src-pdba-v0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pdba-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pdba-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}