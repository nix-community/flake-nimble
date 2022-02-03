{
  description = ''Nim bindings for Godot Engine'';
  inputs.src-godot-v0_4_1.flake = false;
  inputs.src-godot-v0_4_1.type = "github";
  inputs.src-godot-v0_4_1.owner = "pragmagic";
  inputs.src-godot-v0_4_1.repo = "godot-nim";
  inputs.src-godot-v0_4_1.ref = "refs/tags/v0.4.1";
  
  
  inputs."compiler".url = "path:../../../c/compiler";
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-godot-v0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-godot-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-godot-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}