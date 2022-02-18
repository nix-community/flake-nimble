{
  description = ''Simple 'with' macro for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-with-0_4_0.flake = false;
  inputs.src-with-0_4_0.type = "github";
  inputs.src-with-0_4_0.owner = "zevv";
  inputs.src-with-0_4_0.repo = "with";
  inputs.src-with-0_4_0.ref = "refs/tags/0.4.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-with-0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-with-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-with-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}