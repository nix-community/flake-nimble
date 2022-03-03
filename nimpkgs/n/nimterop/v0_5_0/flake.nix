{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimterop-v0_5_0.flake = false;
  inputs.src-nimterop-v0_5_0.type = "github";
  inputs.src-nimterop-v0_5_0.owner = "genotrance";
  inputs.src-nimterop-v0_5_0.repo = "nimterop";
  inputs.src-nimterop-v0_5_0.ref = "refs/tags/v0.5.0";
  inputs.src-nimterop-v0_5_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimterop-v0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimterop-v0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}