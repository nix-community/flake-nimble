{
  description = ''nimaterial is a CSS output library based on material design.'';
  inputs.src-nimaterial-ver_0_3_0.flake = false;
  inputs.src-nimaterial-ver_0_3_0.type = "github";
  inputs.src-nimaterial-ver_0_3_0.owner = "momeemt";
  inputs.src-nimaterial-ver_0_3_0.repo = "nimaterial";
  inputs.src-nimaterial-ver_0_3_0.ref = "refs/tags/ver.0.3.0";
  
  
  inputs."palette".type = "github";
  inputs."palette".owner = "riinr";
  inputs."palette".repo = "flake-nimble";
  inputs."palette".ref = "flake-pinning";
  inputs."palette".dir = "nimpkgs/p/palette";

  outputs = { self, nixpkgs, src-nimaterial-ver_0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimaterial-ver_0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimaterial-ver_0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}