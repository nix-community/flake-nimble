{
  description = ''Simple linear algebra for nim. Js too.'';
  inputs.src-snail-0_2_0.flake = false;
  inputs.src-snail-0_2_0.type = "github";
  inputs.src-snail-0_2_0.owner = "stisa";
  inputs.src-snail-0_2_0.repo = "snail";
  inputs.src-snail-0_2_0.ref = "refs/tags/0.2.0";
  
  
  inputs."nimblas".url = "path:../../../n/nimblas";
  inputs."nimblas".type = "github";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".repo = "flake-nimble";
  inputs."nimblas".ref = "flake-pinning";
  inputs."nimblas".dir = "nimpkgs/n/nimblas";

  outputs = { self, nixpkgs, src-snail-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-snail-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-snail-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}