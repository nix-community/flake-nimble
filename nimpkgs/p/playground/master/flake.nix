{
  description = ''Web-based playground for testing Nim code.'';
  inputs.src-playground-master.flake = false;
  inputs.src-playground-master.type = "github";
  inputs.src-playground-master.owner = "theduke";
  inputs.src-playground-master.repo = "nim-playground";
  inputs.src-playground-master.ref = "refs/heads/master";
  
  
  inputs."jester".url = "path:../../../j/jester";
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  outputs = { self, nixpkgs, src-playground-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-playground-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-playground-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}