{
  description = ''A Nim library for making lightweight Electron-like HTML/JS GUI apps, with full access to Nim capabilities.'';
  inputs.src-neel-v0_3_2.flake = false;
  inputs.src-neel-v0_3_2.type = "github";
  inputs.src-neel-v0_3_2.owner = "Niminem";
  inputs.src-neel-v0_3_2.repo = "Neel";
  inputs.src-neel-v0_3_2.ref = "refs/tags/v0.3.2";
  
  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  
  inputs."ws".type = "github";
  inputs."ws".owner = "riinr";
  inputs."ws".repo = "flake-nimble";
  inputs."ws".ref = "flake-pinning";
  inputs."ws".dir = "nimpkgs/w/ws";

  outputs = { self, nixpkgs, src-Neel-v0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Neel-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Neel-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}