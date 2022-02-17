{
  description = ''Nim bindings for Godot Engine'';
  inputs.src-godot-v0_7_17.flake = false;
  inputs.src-godot-v0_7_17.type = "github";
  inputs.src-godot-v0_7_17.owner = "pragmagic";
  inputs.src-godot-v0_7_17.repo = "godot-nim";
  inputs.src-godot-v0_7_17.ref = "refs/tags/v0.7.17";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-godot-v0_7_17, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-godot-v0_7_17;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-godot-v0_7_17"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}