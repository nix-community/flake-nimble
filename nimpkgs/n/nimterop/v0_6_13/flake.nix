{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimterop-v0_6_13.flake = false;
  inputs.src-nimterop-v0_6_13.type = "github";
  inputs.src-nimterop-v0_6_13.owner = "genotrance";
  inputs.src-nimterop-v0_6_13.repo = "nimterop";
  inputs.src-nimterop-v0_6_13.ref = "refs/tags/v0.6.13";
  inputs.src-nimterop-v0_6_13.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimterop-v0_6_13, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_6_13;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimterop-v0_6_13"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}