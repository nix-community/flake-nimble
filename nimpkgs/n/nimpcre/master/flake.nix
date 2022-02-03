{
  description = ''PCRE wrapper for Nim'';
  inputs.src-nimpcre-master.flake = false;
  inputs.src-nimpcre-master.type = "github";
  inputs.src-nimpcre-master.owner = "genotrance";
  inputs.src-nimpcre-master.repo = "nimpcre";
  inputs.src-nimpcre-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-nimpcre-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpcre-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpcre-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}