{
  description = ''A Nim library for making lightweight Electron-like HTML/JS GUI apps, with full access to Nim capabilities.'';
  inputs.src-neel-v0_2_5.flake = false;
  inputs.src-neel-v0_2_5.type = "github";
  inputs.src-neel-v0_2_5.owner = "Niminem";
  inputs.src-neel-v0_2_5.repo = "Neel";
  inputs.src-neel-v0_2_5.ref = "refs/tags/v0.2.5";
  
  
  inputs."jester".url = "path:../../../j/jester";
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  
  inputs."ws".url = "path:../../../w/ws";
  inputs."ws".type = "github";
  inputs."ws".owner = "riinr";
  inputs."ws".repo = "flake-nimble";
  inputs."ws".ref = "flake-pinning";
  inputs."ws".dir = "nimpkgs/w/ws";

  outputs = { self, nixpkgs, src-Neel-v0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Neel-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Neel-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}