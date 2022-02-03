{
  description = ''Nim bindings for Godot Engine'';
  inputs.src-godot-master.flake = false;
  inputs.src-godot-master.type = "github";
  inputs.src-godot-master.owner = "pragmagic";
  inputs.src-godot-master.repo = "godot-nim";
  inputs.src-godot-master.ref = "refs/heads/master";
  
  
  inputs."compiler".url = "path:../../../c/compiler";
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-godot-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-godot-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-godot-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}