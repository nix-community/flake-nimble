{
  description = ''rect is a command to crop/paste rectangle text.'';
  inputs.src-rect-master.flake = false;
  inputs.src-rect-master.type = "github";
  inputs.src-rect-master.owner = "jiro4989";
  inputs.src-rect-master.repo = "rect";
  inputs.src-rect-master.ref = "refs/heads/master";
  
  
  inputs."eastasianwidth".type = "github";
  inputs."eastasianwidth".owner = "riinr";
  inputs."eastasianwidth".repo = "flake-nimble";
  inputs."eastasianwidth".ref = "flake-pinning";
  inputs."eastasianwidth".dir = "nimpkgs/e/eastasianwidth";

  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-rect-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rect-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rect-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}