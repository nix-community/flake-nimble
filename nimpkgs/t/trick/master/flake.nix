{
  description = ''Game Boy Advance image conversion library and more'';
  inputs.src-trick-master.flake = false;
  inputs.src-trick-master.type = "github";
  inputs.src-trick-master.owner = "exelotl";
  inputs.src-trick-master.repo = "trick";
  inputs.src-trick-master.ref = "refs/heads/master";
  
  
  inputs."nimpng".url = "path:../../../n/nimpng";
  inputs."nimpng".type = "github";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".repo = "flake-nimble";
  inputs."nimpng".ref = "flake-pinning";
  inputs."nimpng".dir = "nimpkgs/n/nimpng";

  outputs = { self, nixpkgs, src-trick-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-trick-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-trick-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}