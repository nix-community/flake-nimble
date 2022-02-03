{
  description = ''A Nim library for making lightweight Electron-like HTML/JS GUI apps, with full access to Nim capabilities.'';
  inputs.src-neel-v0_2_0.flake = false;
  inputs.src-neel-v0_2_0.type = "github";
  inputs.src-neel-v0_2_0.owner = "Niminem";
  inputs.src-neel-v0_2_0.repo = "Neel";
  inputs.src-neel-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
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

  outputs = { self, nixpkgs, src-Neel-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Neel-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Neel-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}