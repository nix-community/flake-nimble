{
  description = ''Nim bindings for Godot Engine'';
  inputs.src-godot-v0_7_4.flake = false;
  inputs.src-godot-v0_7_4.type = "github";
  inputs.src-godot-v0_7_4.owner = "pragmagic";
  inputs.src-godot-v0_7_4.repo = "godot-nim";
  inputs.src-godot-v0_7_4.ref = "refs/tags/v0.7.4";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-godot-v0_7_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-godot-v0_7_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-godot-v0_7_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}