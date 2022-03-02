{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimterop-v0_6_10.flake = false;
  inputs.src-nimterop-v0_6_10.type = "github";
  inputs.src-nimterop-v0_6_10.owner = "genotrance";
  inputs.src-nimterop-v0_6_10.repo = "nimterop";
  inputs.src-nimterop-v0_6_10.ref = "refs/tags/v0.6.10";
  inputs.src-nimterop-v0_6_10.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimterop-v0_6_10, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_6_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimterop-v0_6_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}