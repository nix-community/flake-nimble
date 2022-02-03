{
  description = ''Nim bindings for Godot Engine'';
  inputs.src-godot-v0_7_16.flake = false;
  inputs.src-godot-v0_7_16.type = "github";
  inputs.src-godot-v0_7_16.owner = "pragmagic";
  inputs.src-godot-v0_7_16.repo = "godot-nim";
  inputs.src-godot-v0_7_16.ref = "refs/tags/v0.7.16";
  
  
  inputs."compiler".url = "path:../../../c/compiler";
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-godot-v0_7_16, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-godot-v0_7_16;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-godot-v0_7_16"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}