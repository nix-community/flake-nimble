{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimterop-v0_4_2.flake = false;
  inputs.src-nimterop-v0_4_2.type = "github";
  inputs.src-nimterop-v0_4_2.owner = "genotrance";
  inputs.src-nimterop-v0_4_2.repo = "nimterop";
  inputs.src-nimterop-v0_4_2.ref = "refs/tags/v0.4.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimterop-v0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimterop-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}