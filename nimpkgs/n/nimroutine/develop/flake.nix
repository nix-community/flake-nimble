{
  description = ''A go routine like nim implementation'';
  inputs.src-nimroutine-develop.flake = false;
  inputs.src-nimroutine-develop.type = "github";
  inputs.src-nimroutine-develop.owner = "rogercloud";
  inputs.src-nimroutine-develop.repo = "nim-routine";
  inputs.src-nimroutine-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-nimroutine-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimroutine-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimroutine-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}