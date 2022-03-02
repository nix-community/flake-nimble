{
  description = ''Bindings for zstd'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-zstd-develop.flake = false;
  inputs.src-zstd-develop.type = "github";
  inputs.src-zstd-develop.owner = "wltsmrz";
  inputs.src-zstd-develop.repo = "nim_zstd";
  inputs.src-zstd-develop.ref = "refs/heads/develop";
  inputs.src-zstd-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zstd-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zstd-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zstd-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}