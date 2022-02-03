{
  description = ''Wrapper of the libtcod library for the Nim language.'';
  inputs.src-libtcod_nim-v0_99.flake = false;
  inputs.src-libtcod_nim-v0_99.type = "github";
  inputs.src-libtcod_nim-v0_99.owner = "Vladar4";
  inputs.src-libtcod_nim-v0_99.repo = "libtcod_nim";
  inputs.src-libtcod_nim-v0_99.ref = "refs/tags/v0.99";
  
  outputs = { self, nixpkgs, src-libtcod_nim-v0_99, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libtcod_nim-v0_99;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libtcod_nim-v0_99"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}