{
  description = ''webrod'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-webrod-0_5_0.flake = false;
  inputs.src-webrod-0_5_0.type = "github";
  inputs.src-webrod-0_5_0.owner = "j-a-s-d";
  inputs.src-webrod-0_5_0.repo = "webrod";
  inputs.src-webrod-0_5_0.ref = "refs/tags/0.5.0";
  
  
  inputs."xam".type = "github";
  inputs."xam".owner = "riinr";
  inputs."xam".repo = "flake-nimble";
  inputs."xam".ref = "flake-pinning";
  inputs."xam".dir = "nimpkgs/x/xam";

  outputs = { self, nixpkgs, flakeNimbleLib, src-webrod-0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webrod-0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-webrod-0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}