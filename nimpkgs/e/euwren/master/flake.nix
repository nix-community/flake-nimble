{
  description = ''High-level Wren wrapper'';
  inputs.src-euwren-master.flake = false;
  inputs.src-euwren-master.type = "github";
  inputs.src-euwren-master.owner = "liquid600pgm";
  inputs.src-euwren-master.repo = "euwren";
  inputs.src-euwren-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-euwren-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-euwren-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-euwren-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}