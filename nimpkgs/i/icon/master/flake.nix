{
  description = ''Generate icon files from PNG files.'';
  inputs.src-icon-master.flake = false;
  inputs.src-icon-master.type = "github";
  inputs.src-icon-master.owner = "bung87";
  inputs.src-icon-master.repo = "icon";
  inputs.src-icon-master.ref = "refs/heads/master";
  
  
  inputs."nimpng".type = "github";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".repo = "flake-nimble";
  inputs."nimpng".ref = "flake-pinning";
  inputs."nimpng".dir = "nimpkgs/n/nimpng";

  
  inputs."struct".type = "github";
  inputs."struct".owner = "riinr";
  inputs."struct".repo = "flake-nimble";
  inputs."struct".ref = "flake-pinning";
  inputs."struct".dir = "nimpkgs/s/struct";

  outputs = { self, nixpkgs, src-icon-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-icon-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-icon-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}