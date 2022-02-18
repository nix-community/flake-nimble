{
  description = ''Light weight bookmark manager(delicious alternative)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-skybook-1_0_1.flake = false;
  inputs.src-skybook-1_0_1.type = "github";
  inputs.src-skybook-1_0_1.owner = "muxueqz";
  inputs.src-skybook-1_0_1.repo = "skybook";
  inputs.src-skybook-1_0_1.ref = "refs/tags/1.0.1";
  
  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  outputs = { self, nixpkgs, flakeNimbleLib, src-skybook-1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-skybook-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-skybook-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}