{
  description = ''Application to detect which commit generates malicious code detection by antivirus software.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-mcd-develop.flake = false;
  inputs.src-mcd-develop.type = "gitlab";
  inputs.src-mcd-develop.owner = "malicious-commit-detector";
  inputs.src-mcd-develop.repo = "mcd";
  inputs.src-mcd-develop.ref = "refs/heads/develop";
  inputs.src-mcd-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."parsetoml".type = "github";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".repo = "flake-nimble";
  inputs."parsetoml".ref = "flake-pinning";
  inputs."parsetoml".dir = "nimpkgs/p/parsetoml";
  inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."colorizeecho".type = "github";
  inputs."colorizeecho".owner = "riinr";
  inputs."colorizeecho".repo = "flake-nimble";
  inputs."colorizeecho".ref = "flake-pinning";
  inputs."colorizeecho".dir = "nimpkgs/c/colorizeecho";
  inputs."colorizeecho".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorizeecho".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-mcd-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mcd-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mcd-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}