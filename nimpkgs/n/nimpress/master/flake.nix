{
  description = ''Fast and simple calculation of polygenic scores'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimpress-master.flake = false;
  inputs.src-nimpress-master.type = "github";
  inputs.src-nimpress-master.owner = "mpinese";
  inputs.src-nimpress-master.repo = "nimpress";
  inputs.src-nimpress-master.ref = "refs/heads/master";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
  inputs."hts".type = "github";
  inputs."hts".owner = "riinr";
  inputs."hts".repo = "flake-nimble";
  inputs."hts".ref = "flake-pinning";
  inputs."hts".dir = "nimpkgs/h/hts";

  
  inputs."lapper".type = "github";
  inputs."lapper".owner = "riinr";
  inputs."lapper".repo = "flake-nimble";
  inputs."lapper".ref = "flake-pinning";
  inputs."lapper".dir = "nimpkgs/l/lapper";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpress-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpress-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpress-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}