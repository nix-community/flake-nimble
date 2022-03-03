{
  description = ''Nim wrapper around the ngtcp2 library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ngtcp2-0_32_0.flake = false;
  inputs.src-ngtcp2-0_32_0.type = "github";
  inputs.src-ngtcp2-0_32_0.owner = "status-im";
  inputs.src-ngtcp2-0_32_0.repo = "nim-ngtcp2";
  inputs.src-ngtcp2-0_32_0.ref = "refs/tags/0.32.0";
  inputs.src-ngtcp2-0_32_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ngtcp2-0_32_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ngtcp2-0_32_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ngtcp2-0_32_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}