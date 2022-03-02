{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimterop-v0_6_12.flake = false;
  inputs.src-nimterop-v0_6_12.type = "github";
  inputs.src-nimterop-v0_6_12.owner = "genotrance";
  inputs.src-nimterop-v0_6_12.repo = "nimterop";
  inputs.src-nimterop-v0_6_12.ref = "refs/tags/v0.6.12";
  inputs.src-nimterop-v0_6_12.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimterop-v0_6_12, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_6_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimterop-v0_6_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}