{
  description = ''A better regular expression library'';
  inputs.src-nre-0_6_1.flake = false;
  inputs.src-nre-0_6_1.type = "github";
  inputs.src-nre-0_6_1.owner = "flaviut";
  inputs.src-nre-0_6_1.repo = "nre";
  inputs.src-nre-0_6_1.ref = "refs/tags/0.6.1";
  
  
  inputs."optional_t".url = "path:../../../o/optional_t";
  inputs."optional_t".type = "github";
  inputs."optional_t".owner = "riinr";
  inputs."optional_t".repo = "flake-nimble";
  inputs."optional_t".ref = "flake-pinning";
  inputs."optional_t".dir = "nimpkgs/o/optional_t";

  outputs = { self, nixpkgs, src-nre-0_6_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nre-0_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nre-0_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}