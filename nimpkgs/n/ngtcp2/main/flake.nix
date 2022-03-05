{
  description = ''Nim wrapper around the ngtcp2 library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ngtcp2-main.flake = false;
  inputs.src-ngtcp2-main.type = "github";
  inputs.src-ngtcp2-main.owner = "status-im";
  inputs.src-ngtcp2-main.repo = "nim-ngtcp2";
  inputs.src-ngtcp2-main.ref = "refs/heads/main";
  inputs.src-ngtcp2-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ngtcp2-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ngtcp2-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ngtcp2-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}