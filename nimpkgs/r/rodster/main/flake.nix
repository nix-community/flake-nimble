{
  description = ''rodster'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rodster-main.flake = false;
  inputs.src-rodster-main.type = "github";
  inputs.src-rodster-main.owner = "j-a-s-d";
  inputs.src-rodster-main.repo = "rodster";
  inputs.src-rodster-main.ref = "refs/heads/main";
  
  
  inputs."xam".type = "github";
  inputs."xam".owner = "riinr";
  inputs."xam".repo = "flake-nimble";
  inputs."xam".ref = "flake-pinning";
  inputs."xam".dir = "nimpkgs/x/xam";

  outputs = { self, nixpkgs, flakeNimbleLib, src-rodster-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rodster-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rodster-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}