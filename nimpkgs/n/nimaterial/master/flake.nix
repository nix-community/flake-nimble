{
  description = ''nimaterial is a CSS output library based on material design.'';
  inputs.src-nimaterial-master.flake = false;
  inputs.src-nimaterial-master.type = "github";
  inputs.src-nimaterial-master.owner = "momeemt";
  inputs.src-nimaterial-master.repo = "nimaterial";
  inputs.src-nimaterial-master.ref = "refs/heads/master";
  
  
  inputs."palette".url = "path:../../../p/palette";
  inputs."palette".type = "github";
  inputs."palette".owner = "riinr";
  inputs."palette".repo = "flake-nimble";
  inputs."palette".ref = "flake-pinning";
  inputs."palette".dir = "nimpkgs/p/palette";

  outputs = { self, nixpkgs, src-nimaterial-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimaterial-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimaterial-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}