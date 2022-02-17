{
  description = ''Prints a dot graph of a nim ast dumped using the `dumpTree` macro.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-astdot-main.flake = false;
  inputs.src-astdot-main.type = "github";
  inputs.src-astdot-main.owner = "Rekihyt";
  inputs.src-astdot-main.repo = "astdot";
  inputs.src-astdot-main.ref = "refs/heads/main";
  
  
  inputs."strings".type = "github";
  inputs."strings".owner = "riinr";
  inputs."strings".repo = "flake-nimble";
  inputs."strings".ref = "flake-pinning";
  inputs."strings".dir = "nimpkgs/s/strings";

  
  inputs."clapfn".type = "github";
  inputs."clapfn".owner = "riinr";
  inputs."clapfn".repo = "flake-nimble";
  inputs."clapfn".ref = "flake-pinning";
  inputs."clapfn".dir = "nimpkgs/c/clapfn";

  
  inputs."nimgraphviz".type = "github";
  inputs."nimgraphviz".owner = "riinr";
  inputs."nimgraphviz".repo = "flake-nimble";
  inputs."nimgraphviz".ref = "flake-pinning";
  inputs."nimgraphviz".dir = "nimpkgs/n/nimgraphviz";

  outputs = { self, nixpkgs, flakeNimbleLib, src-astdot-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-astdot-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-astdot-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}