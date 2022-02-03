{
  description = ''Wrapper of the libtcod library for the Nim language.'';
  inputs.src-libtcod_nim-v1_112_1.flake = false;
  inputs.src-libtcod_nim-v1_112_1.type = "github";
  inputs.src-libtcod_nim-v1_112_1.owner = "Vladar4";
  inputs.src-libtcod_nim-v1_112_1.repo = "libtcod_nim";
  inputs.src-libtcod_nim-v1_112_1.ref = "refs/tags/v1.112.1";
  
  outputs = { self, nixpkgs, src-libtcod_nim-v1_112_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libtcod_nim-v1_112_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libtcod_nim-v1_112_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}