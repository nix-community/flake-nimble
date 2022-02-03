{
  description = ''Wrapper of the libtcod library for the Nim language.'';
  inputs.src-libtcod_nim-v0_95.flake = false;
  inputs.src-libtcod_nim-v0_95.type = "github";
  inputs.src-libtcod_nim-v0_95.owner = "Vladar4";
  inputs.src-libtcod_nim-v0_95.repo = "libtcod_nim";
  inputs.src-libtcod_nim-v0_95.ref = "refs/tags/v0.95";
  
  outputs = { self, nixpkgs, src-libtcod_nim-v0_95, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libtcod_nim-v0_95;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libtcod_nim-v0_95"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}