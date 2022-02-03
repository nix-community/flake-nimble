{
  description = ''Wrapper of the libtcod library for the Nim language.'';
  inputs.src-libtcod_nim-v0_96.flake = false;
  inputs.src-libtcod_nim-v0_96.type = "github";
  inputs.src-libtcod_nim-v0_96.owner = "Vladar4";
  inputs.src-libtcod_nim-v0_96.repo = "libtcod_nim";
  inputs.src-libtcod_nim-v0_96.ref = "refs/tags/v0.96";
  
  outputs = { self, nixpkgs, src-libtcod_nim-v0_96, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libtcod_nim-v0_96;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libtcod_nim-v0_96"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}