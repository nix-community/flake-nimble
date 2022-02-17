{
  description = ''Game Boy Advance image conversion library and more'';
  inputs.src-trick-0_1_2.flake = false;
  inputs.src-trick-0_1_2.type = "github";
  inputs.src-trick-0_1_2.owner = "exelotl";
  inputs.src-trick-0_1_2.repo = "trick";
  inputs.src-trick-0_1_2.ref = "refs/tags/0.1.2";
  
  
  inputs."nimpng".type = "github";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".repo = "flake-nimble";
  inputs."nimpng".ref = "flake-pinning";
  inputs."nimpng".dir = "nimpkgs/n/nimpng";

  outputs = { self, nixpkgs, src-trick-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-trick-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-trick-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}