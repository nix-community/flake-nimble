{
  description = ''Simple linear algebra for nim. Js too.'';
  inputs.src-snail-master.flake = false;
  inputs.src-snail-master.type = "github";
  inputs.src-snail-master.owner = "stisa";
  inputs.src-snail-master.repo = "snail";
  inputs.src-snail-master.ref = "refs/heads/master";
  
  
  inputs."nimblas".url = "path:../../../n/nimblas";
  inputs."nimblas".type = "github";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".repo = "flake-nimble";
  inputs."nimblas".ref = "flake-pinning";
  inputs."nimblas".dir = "nimpkgs/n/nimblas";

  outputs = { self, nixpkgs, src-snail-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-snail-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-snail-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}