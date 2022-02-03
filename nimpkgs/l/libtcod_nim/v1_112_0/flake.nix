{
  description = ''Wrapper of the libtcod library for the Nim language.'';
  inputs.src-libtcod_nim-v1_112_0.flake = false;
  inputs.src-libtcod_nim-v1_112_0.type = "github";
  inputs.src-libtcod_nim-v1_112_0.owner = "Vladar4";
  inputs.src-libtcod_nim-v1_112_0.repo = "libtcod_nim";
  inputs.src-libtcod_nim-v1_112_0.ref = "refs/tags/v1.112.0";
  
  outputs = { self, nixpkgs, src-libtcod_nim-v1_112_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libtcod_nim-v1_112_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libtcod_nim-v1_112_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}