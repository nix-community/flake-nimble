{
  description = ''Simple window maker.'';
  inputs.src-siwin-0_4.flake = false;
  inputs.src-siwin-0_4.type = "github";
  inputs.src-siwin-0_4.owner = "levovix0";
  inputs.src-siwin-0_4.repo = "siwin";
  inputs.src-siwin-0_4.ref = "refs/tags/0.4";
  
  
  inputs."chroma".url = "path:../../../c/chroma";
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."x11".url = "path:../../../x/x11";
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";

  outputs = { self, nixpkgs, src-siwin-0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-siwin-0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-siwin-0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}