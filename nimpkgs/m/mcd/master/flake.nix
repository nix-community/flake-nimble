{
  description = ''Application to detect which commit generates malicious code detection by antivirus software.'';
  inputs.src-mcd-master.flake = false;
  inputs.src-mcd-master.type = "gitlab";
  inputs.src-mcd-master.owner = "malicious-commit-detector";
  inputs.src-mcd-master.repo = "mcd";
  inputs.src-mcd-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-mcd-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mcd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mcd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}