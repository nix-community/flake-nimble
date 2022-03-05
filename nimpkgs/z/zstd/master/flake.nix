{
  description = ''Bindings for zstd'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-zstd-master.flake = false;
  inputs.src-zstd-master.type = "github";
  inputs.src-zstd-master.owner = "wltsmrz";
  inputs.src-zstd-master.repo = "nim_zstd";
  inputs.src-zstd-master.ref = "refs/heads/master";
  inputs.src-zstd-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zstd-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zstd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zstd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}