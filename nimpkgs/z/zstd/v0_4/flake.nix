{
  description = ''Bindings for zstd'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-zstd-v0_4.flake = false;
  inputs.src-zstd-v0_4.type = "github";
  inputs.src-zstd-v0_4.owner = "wltsmrz";
  inputs.src-zstd-v0_4.repo = "nim_zstd";
  inputs.src-zstd-v0_4.ref = "refs/tags/v0.4";
  inputs.src-zstd-v0_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zstd-v0_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zstd-v0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zstd-v0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}