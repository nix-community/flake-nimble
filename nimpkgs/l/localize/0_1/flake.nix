{
  description = ''Compile time localization for applications'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-localize-0_1.flake = false;
  inputs.src-localize-0_1.type = "github";
  inputs.src-localize-0_1.owner = "levovix0";
  inputs.src-localize-0_1.repo = "localize";
  inputs.src-localize-0_1.ref = "refs/tags/0.1";
  
  
  inputs."fusion".type = "github";
  inputs."fusion".owner = "riinr";
  inputs."fusion".repo = "flake-nimble";
  inputs."fusion".ref = "flake-pinning";
  inputs."fusion".dir = "nimpkgs/f/fusion";

  outputs = { self, nixpkgs, flakeNimbleLib, src-localize-0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-localize-0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-localize-0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}