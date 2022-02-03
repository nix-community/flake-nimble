{
  description = ''Simple window maker.'';
  inputs.src-siwin-master.flake = false;
  inputs.src-siwin-master.type = "github";
  inputs.src-siwin-master.owner = "levovix0";
  inputs.src-siwin-master.repo = "siwin";
  inputs.src-siwin-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-siwin-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-siwin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-siwin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}