{
  description = ''An embedded text editor for paranim games'';
  inputs.src-paravim-0_10_0.flake = false;
  inputs.src-paravim-0_10_0.type = "github";
  inputs.src-paravim-0_10_0.owner = "paranim";
  inputs.src-paravim-0_10_0.repo = "paravim";
  inputs.src-paravim-0_10_0.ref = "refs/tags/0.10.0";
  
  
  inputs."paranim".url = "path:../../../p/paranim";
  inputs."paranim".type = "github";
  inputs."paranim".owner = "riinr";
  inputs."paranim".repo = "flake-nimble";
  inputs."paranim".ref = "flake-pinning";
  inputs."paranim".dir = "nimpkgs/p/paranim";

  
  inputs."pararules".url = "path:../../../p/pararules";
  inputs."pararules".type = "github";
  inputs."pararules".owner = "riinr";
  inputs."pararules".repo = "flake-nimble";
  inputs."pararules".ref = "flake-pinning";
  inputs."pararules".dir = "nimpkgs/p/pararules";

  
  inputs."paratext".url = "path:../../../p/paratext";
  inputs."paratext".type = "github";
  inputs."paratext".owner = "riinr";
  inputs."paratext".repo = "flake-nimble";
  inputs."paratext".ref = "flake-pinning";
  inputs."paratext".dir = "nimpkgs/p/paratext";

  outputs = { self, nixpkgs, src-paravim-0_10_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paravim-0_10_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-paravim-0_10_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}