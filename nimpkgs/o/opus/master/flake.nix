{
  description = ''A nimterop wrapper for the opus audio decoder'';
  inputs.src-opus-master.flake = false;
  inputs.src-opus-master.type = "github";
  inputs.src-opus-master.owner = "capocasa";
  inputs.src-opus-master.repo = "nim-opus";
  inputs.src-opus-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-opus-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}