{
  description = ''Interactive Nim Shell'';
  inputs.src-inim-master.flake = false;
  inputs.src-inim-master.type = "github";
  inputs.src-inim-master.owner = "inim-repl";
  inputs.src-inim-master.repo = "INim";
  inputs.src-inim-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."noise".url = "path:../../../n/noise";
  inputs."noise".type = "github";
  inputs."noise".owner = "riinr";
  inputs."noise".repo = "flake-nimble";
  inputs."noise".ref = "flake-pinning";
  inputs."noise".dir = "nimpkgs/n/noise";

  outputs = { self, nixpkgs, src-inim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-inim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}