{
  description = ''rodster'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rodster-0_2_0.flake = false;
  inputs.src-rodster-0_2_0.type = "github";
  inputs.src-rodster-0_2_0.owner = "j-a-s-d";
  inputs.src-rodster-0_2_0.repo = "rodster";
  inputs.src-rodster-0_2_0.ref = "refs/tags/0.2.0";
  
  
  inputs."xam".type = "github";
  inputs."xam".owner = "riinr";
  inputs."xam".repo = "flake-nimble";
  inputs."xam".ref = "flake-pinning";
  inputs."xam".dir = "nimpkgs/x/xam";

  outputs = { self, nixpkgs, flakeNimbleLib, src-rodster-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rodster-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rodster-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}