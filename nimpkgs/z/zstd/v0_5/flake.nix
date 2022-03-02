{
  description = ''Bindings for zstd'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-zstd-v0_5.flake = false;
  inputs.src-zstd-v0_5.type = "github";
  inputs.src-zstd-v0_5.owner = "wltsmrz";
  inputs.src-zstd-v0_5.repo = "nim_zstd";
  inputs.src-zstd-v0_5.ref = "refs/tags/v0.5";
  inputs.src-zstd-v0_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zstd-v0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zstd-v0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zstd-v0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}