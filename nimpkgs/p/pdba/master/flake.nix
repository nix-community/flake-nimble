{
  description = ''A postgres DB adapter for nim.'';
  inputs.src-pdba-master.flake = false;
  inputs.src-pdba-master.type = "github";
  inputs.src-pdba-master.owner = "misebox";
  inputs.src-pdba-master.repo = "pdba";
  inputs.src-pdba-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-pdba-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pdba-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pdba-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}