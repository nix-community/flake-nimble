{
  description = ''Simple screenshot library & cli tool made in Nim'';
  inputs.src-nsu-master.flake = false;
  inputs.src-nsu-master.type = "github";
  inputs.src-nsu-master.owner = "Senketsu";
  inputs.src-nsu-master.repo = "nsu";
  inputs.src-nsu-master.ref = "refs/heads/master";
  
  
  inputs."x11".url = "path:../../../x/x11";
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";

  
  inputs."winim".url = "path:../../../w/winim";
  inputs."winim".type = "github";
  inputs."winim".owner = "riinr";
  inputs."winim".repo = "flake-nimble";
  inputs."winim".ref = "flake-pinning";
  inputs."winim".dir = "nimpkgs/w/winim";

  
  inputs."flippy".url = "path:../../../f/flippy";
  inputs."flippy".type = "github";
  inputs."flippy".owner = "riinr";
  inputs."flippy".repo = "flake-nimble";
  inputs."flippy".ref = "flake-pinning";
  inputs."flippy".dir = "nimpkgs/f/flippy";

  outputs = { self, nixpkgs, src-nsu-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nsu-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nsu-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}