{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimterop-v0_6_11.flake = false;
  inputs.src-nimterop-v0_6_11.type = "github";
  inputs.src-nimterop-v0_6_11.owner = "genotrance";
  inputs.src-nimterop-v0_6_11.repo = "nimterop";
  inputs.src-nimterop-v0_6_11.ref = "refs/tags/v0.6.11";
  inputs.src-nimterop-v0_6_11.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimterop-v0_6_11, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_6_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimterop-v0_6_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}