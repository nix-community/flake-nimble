{
  description = ''Fast and simple calculation of polygenic scores'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimpress-develop.flake = false;
  inputs.src-nimpress-develop.type = "github";
  inputs.src-nimpress-develop.owner = "mpinese";
  inputs.src-nimpress-develop.repo = "nimpress";
  inputs.src-nimpress-develop.ref = "refs/heads/develop";
  inputs.src-nimpress-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."docopt".type = "github";
  # inputs."docopt".owner = "riinr";
  # inputs."docopt".repo = "flake-nimble";
  # inputs."docopt".ref = "flake-pinning";
  # inputs."docopt".dir = "nimpkgs/d/docopt";
  # inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."hts".type = "github";
  # inputs."hts".owner = "riinr";
  # inputs."hts".repo = "flake-nimble";
  # inputs."hts".ref = "flake-pinning";
  # inputs."hts".dir = "nimpkgs/h/hts";
  # inputs."hts".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."lapper".type = "github";
  # inputs."lapper".owner = "riinr";
  # inputs."lapper".repo = "flake-nimble";
  # inputs."lapper".ref = "flake-pinning";
  # inputs."lapper".dir = "nimpkgs/l/lapper";
  # inputs."lapper".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."lapper".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpress-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpress-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpress-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}