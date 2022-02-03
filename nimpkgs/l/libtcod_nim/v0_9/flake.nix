{
  description = ''Wrapper of the libtcod library for the Nim language.'';
  inputs.src-libtcod_nim-v0_9.flake = false;
  inputs.src-libtcod_nim-v0_9.type = "github";
  inputs.src-libtcod_nim-v0_9.owner = "Vladar4";
  inputs.src-libtcod_nim-v0_9.repo = "libtcod_nim";
  inputs.src-libtcod_nim-v0_9.ref = "refs/tags/v0.9";
  
  outputs = { self, nixpkgs, src-libtcod_nim-v0_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libtcod_nim-v0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libtcod_nim-v0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}