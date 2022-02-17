{
  description = ''Simple OT wrapper'';
  inputs.src-simpleot-master.flake = false;
  inputs.src-simpleot-master.type = "github";
  inputs.src-simpleot-master.owner = "markspanbroek";
  inputs.src-simpleot-master.repo = "simpleot.nim";
  inputs.src-simpleot-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-simpleot-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleot-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simpleot-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}