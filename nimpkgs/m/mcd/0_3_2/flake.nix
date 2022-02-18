{
  description = ''Application to detect which commit generates malicious code detection by antivirus software.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mcd-0_3_2.flake = false;
  inputs.src-mcd-0_3_2.type = "gitlab";
  inputs.src-mcd-0_3_2.owner = "malicious-commit-detector";
  inputs.src-mcd-0_3_2.repo = "mcd";
  inputs.src-mcd-0_3_2.ref = "refs/tags/0.3.2";
  
  
  inputs."parsetoml".type = "github";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".repo = "flake-nimble";
  inputs."parsetoml".ref = "flake-pinning";
  inputs."parsetoml".dir = "nimpkgs/p/parsetoml";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."colorizeecho".type = "github";
  inputs."colorizeecho".owner = "riinr";
  inputs."colorizeecho".repo = "flake-nimble";
  inputs."colorizeecho".ref = "flake-pinning";
  inputs."colorizeecho".dir = "nimpkgs/c/colorizeecho";

  outputs = { self, nixpkgs, flakeNimbleLib, src-mcd-0_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mcd-0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mcd-0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}