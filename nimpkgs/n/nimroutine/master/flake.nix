{
  description = ''A go routine like nim implementation'';
  inputs.src-nimroutine-master.flake = false;
  inputs.src-nimroutine-master.type = "github";
  inputs.src-nimroutine-master.owner = "rogercloud";
  inputs.src-nimroutine-master.repo = "nim-routine";
  inputs.src-nimroutine-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimroutine-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimroutine-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimroutine-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}