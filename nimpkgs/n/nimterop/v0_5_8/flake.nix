{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimterop-v0_5_8.flake = false;
  inputs.src-nimterop-v0_5_8.type = "github";
  inputs.src-nimterop-v0_5_8.owner = "genotrance";
  inputs.src-nimterop-v0_5_8.repo = "nimterop";
  inputs.src-nimterop-v0_5_8.ref = "refs/tags/v0.5.8";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimterop-v0_5_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_5_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimterop-v0_5_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}