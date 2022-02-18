{
  description = ''Bindings for zstd'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zstd-master.flake = false;
  inputs.src-zstd-master.type = "github";
  inputs.src-zstd-master.owner = "wltsmrz";
  inputs.src-zstd-master.repo = "nim_zstd";
  inputs.src-zstd-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zstd-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zstd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zstd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}